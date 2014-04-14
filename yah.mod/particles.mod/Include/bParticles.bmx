Private

'Wrap functions from the particle C++ code
Extern "C"
	Function cCreateParticle:Byte Ptr(_x:Float, _y:Float, _dir:Int = 0, _speed:Float = 0, frames:Int = 1, _fade:Int = False, _autorot:Int = False, _z:Int = 0)
	Function cUpdateParticle(p:Byte Ptr, ax:Float, ay:Float, fx:Float, fy:Float)
	Function cDeleteParticle(p:Byte Ptr)
	Function cPX:Float(p:Byte Ptr)
	Function cPY:Float(p:Byte Ptr)
	Function cPA:Float(p:Byte Ptr)
	Function cPR:Int(p:Byte Ptr)
	Function cPLife:Int(p:Byte Ptr)
End Extern


'TParticle type, basicly a wrapper w/ drawing functions for the class counterpart.
Global ParticleList:TList = CreateList()

Type TParticle
	Field img:TImage 'particle img...
	Field cBuddy:Byte Ptr 'the handle for our c++ counterpart.
	Field z:Int 'an 'ID' that we call on to give us seperate drawing abilities
	
	Method Create:TParticle(_x:Float, _y:Float, _img:TImage, _dir:Int = 0, _speed:Float = 0, frames:Int = 1, _fade:Int = False, _autorot:Int = False, _scale:Int = False, _z:Int = 0)
		'create a "c" particle and give it's handle to the cbuddy variable
		cBuddy = cCreateParticle(_x, _y, _dir, _speed, frames, _fade, _autorot, _scale, _z)
		'Add this object to the particle list
		ListAddLast(ParticleList,Self)
		'Add some given arguments to the object
		img = _img
		z = _z
	End Method
	
	Method Update(addx:Float, addy:Float, forcex:Float=0, forcey:Float=0)
		'Update the "c" particle
		cUpdateParticle(cBuddy, addx, addy, forcex, forcey)
		'Grab the new x/y positions of the "c" particle(so we only have to use this function once per loop)
		Local x:Float = cPX(cBuddy)
		Local y:Float = cPY(cBuddy)
		
		'check for conditions for destroying a particle
		If cPLife(cBuddy) = 0 Or x > GraphicsWidth()+ImageWidth(img) Or x < 0-ImageWidth(img) Or y > GraphicsHeight()+ImageHeight(img) Or y < 0-ImageHeight(img)
			Destroy()
			Return
		End If
		
		'Draw the given img at the "c" Particle's locations 
		SetAlpha cPA(cBuddy)
		SetRotation cPR(cBuddy) 
		SetScale cPS(cBuddy),cPS(cBuddy)
		DrawImage img , x , y
		SetScale 1,1
		SetAlpha 1
		SetRotation 0
	End Method
	
	Method Destroy()
		ParticleList.Remove(Self) ' destroy bmax particle
		cDeleteParticle(cBuddy) 'destroy C++ counterpart
	End Method
	
End Type

Public

Rem
bbdoc: ParticleExplosion creator
about: Creates a particle explosion at X and Y with Image with a certain N of particles, that lasts a certain amount of Frames and can have a SpeedMultiplyer, and a Z location(to specify where rendered)
returns: Nothing
EndRem
Function ParticleExplosion(_x:Float, _y:Float, image:TImage, n:Int, frames:Int, speed_multiplyer:Float = 0, ar:Int = False, _z:Int = 0)
	Local speed:Float
	
	For Local i:Int = 1 To n
		Local dir:Int = Rand(0, 359)'random directions
		
		If speed_multiplyer
			speed = Rnd(0.08*speed_multiplyer, 1.5*speed_multiplyer) 'multiplie base speed by multiplier
		Else
			speed = Rnd(0.08, 1.5) 'base speed if no multiplier
		End If
		
		Local part:TParticle = New TParticle.Create(_x, _y, image, dir, speed, frames - 10 + Rand((frames*1.40)), True, ar, False, _z)
	Next
	
End Function

Rem
bbdoc: Particle update routine
about: Updates particles at said Z level, you can add a optional force routine for things such as gravity.
returns: Nothing
EndRem
Function UpdateParticlesZ(z:Int = 0, addx:Float = 0, addy:Float = 0, forcex:Float = 0, forcey:Float = 0)	
	For Local UpdateP:TParticle = EachIn ParticleList
		If UpdateP.z = z
			UpdateP.Update(addx, addy, forcex, forcey)
		End If
	Next
End Function

Rem
bbdoc: Particle creator
about: Creates a particle at said point with said attributes
returns: Nothing
EndRem
Function EmitParticle(_x:Float, _y:Float, image:TImage, frames:Int, fade:Int = True, dir:Int = 0, speed:Float = 0, ar:Int = False, _scale:Int = False, _z:Int = 0)

	Local part:TParticle = New TParticle.Create(_x, _y, image, dir, speed, frames, fade, ar, _scale, _z)

End Function

Rem
bbdoc: Clear particlesZ function
about: Clears all particles on the given Z level.
returns: Nothing
End Rem
Function ClearParticlesZ(z:Int = 0)
	For Local delp:TParticle = EachIn ParticleList
		If delp.z = z
			delp.Destroy
		End If
	Next
End Function

Rem
bbdoc: Particle count function
about: Returns the particle count
returns: The particle count
End Rem
Function ParticleCount:Int()
	Return ParticleList.Count()
End Function