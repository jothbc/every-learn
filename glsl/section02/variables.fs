int num1 = 1;
float num2 = 33.3;
bool isFacing = true;


int myvar = int(12.0) * 3;

vec2 v = vec2(0.5);
// now v.x = 0.05 and v.y = 0.5
w = v * 2.0;
// now w.x = 1.0 and w.y = 1.0

vec3 v3 = vec3(0.5);
// now v.x = 0.5, v.y = 0.5 and v.z = 0.5

vec4 v4 = vec4(1.0);
// now v.x = 1.0, v.y = 1.0, v.z = 1.0 and v.w = 1.0

// integers
ivec2 i1 = ivec2(725);
ivec3 i2 = ivec3(13);

//booleans
bvec2 b1 = bvec2(true);
bvec3 b2 = bvec3(false);

//conditionals
if(true){
  //
}else{
  //
}

//for loops
const int count = 10;
for (let i=0; i<count; i++){
  //
}

//functions
bool inRect(vec2 pt, vec4 rect){
  bool result=false;
  //calculate
  return result;
}
// overloading
bool inRect(vec2 pt, float x, float y, float width, float height){
  bool result=false;
  //calculate
  return result;
}