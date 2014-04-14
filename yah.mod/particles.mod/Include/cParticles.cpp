#include <math.h>
#define DEG_TO_RAD 0.0174532925199432957692369076848861

//Functions to grab a Radian sin/cos not in degrees.
double Sin2( double ang ){
	return sin( ang*DEG_TO_RAD );
}
double Cos2( double ang ){
	return cos( ang*DEG_TO_RAD );
}

// All the stuff that can be accessed in bmax
extern "C" {

    // our particle class
    class cParticle {
    public:
          // all the variables associated with a particle
          float x;
          float y;
          float a;
          int r;
		 float s;
          float dx;
          float dy;
          float da;
          int maxdistance;
          float speed;
          int dir;
          int fade;
		 int scale;
          int z;
          
          // constructor (AKA Create())
          cParticle(float, float, int, float, int, bool, bool, bool, int);
          // destructor have not found a use yet
          ~cParticle();
          
          //Update particle
          void Update(float, float, float, float); 
    };
    
    // Our class functions redefined:
           
    // constuctor
    cParticle::cParticle(float _x, float _y, int _dir = 0, 
                               float _speed = 0, 
                          int frames = 1, bool _fade = false, 
                          bool _autorot = false, bool _scale = false, int _z = 0) {
                
  		z = _z;
		x = _x;
		y = _y;
		speed = _speed;
		dir = _dir;
		dx = (Sin2(dir) * speed); 
		dy = (-Cos2(dir) * speed);
		da = 1.0 / frames;
		a = 1.0;
		s = 1.0;
		maxdistance = frames;
		if(dir > 0&&_autorot > 0){
			r = dir;
		}

		if(_fade > 0) {
			fade = true;
        }
		if(_autoscale > 0)  {
			scale = true;
		}
                               
    
    }
    //destructor
    cParticle::~cParticle() {
        
        // code for destructor
    }      
    
             
    void cParticle::Update(float ax,float ay,float fx, float fy) {
		dx = dx+fx;
		dy = dy+fy;
		x=x+dx+ax;
		y=y+dy+ay;
		if( fade == true ) { a=a-da; }
		if( scale == true ) { s=s-da; }
		maxdistance--;
    }
    
    // mainsteam functions:
                 
    // Wrap function to create a particle
    cParticle *cCreateParticle(float _x, float _y, int _dir = 0, 
                               float _speed = 0, 
                          int frames = 1, bool _fade = false, 
                          bool _autorot = false, bool _scale = false, int _z = 0) {
         cParticle *p; // particle that we will return
         p = new cParticle(_x, _y, _dir, 
                           _speed, frames, 
                           _fade, 
                           _autorot, _scale,
						 _z); // basicly shove the arguments of this function into a constructor
         return p;
    }
    
    //Wrap function to delete a particle
    void cDeleteParticle(cParticle *p) {
         if (p != 0) { delete p; }
    }
    
    //Wrap function to update a particle
    void cUpdateParticle(cParticle *p, float ax, float ay, float fx, float fy){
         if (p != 0){ p->Update(ax, ay, fx, fy); }
    }
    
    //functions to get various states of a particle
    float cPX(cParticle *p) {
         if (p != 0){ return p->x; }
    }
    float cPY(cParticle *p) {
         if (p != 0){ return p->y; }
    }
    float cPA(cParticle *p) {
         if (p != 0){ return p->a; }
    }
	float cPS(cParticle *p) {
         if (p != 0){ return p->s; }
    }
    int cPR(cParticle *p) {
         if (p != 0){ return p->r; }
    }
    int cPLife(cParticle *p) {
        if (p != 0){ return p->maxdistance; }
    }
}
