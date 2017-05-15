#include<stdio.h>
#include <GLUT/glut.h>
#include<stdio.h>
#include<math.h>
#include<stdlib.h>

int motion_var = 0;
int hights_of_grass[1000];
int hight_stored = 0;
//
int list_of_randoms[1000];
for (int i = 0; i < 1000; i++) {
  list_of_randoms[i] = rand()%1000;
}


int list_of_random_colors[];
for (int i = 0; i < 3000; i++) {
  list_of_random_colors[i] = rand()%255;
}

float toradian(float degree){
    return (3.14159/180)*degree;
}

void draw_rectangle(float x, float y, float w, float h, int fill){
    if (fill)
        glBegin(GL_POLYGON);
    else
        glBegin(GL_LINE_LOOP);
        glVertex2f(x, y);
        glVertex2f(x+w, y);
        glVertex2f(x+w, y+h);
        glVertex2f(x, y+h);
    glEnd();
    glFlush();
}

void draw_circle(float x, float y, float r, int fill){
    float i;
    float x_cord, y_cord;
    if (fill)
        glBegin(GL_POLYGON);
    else
        glBegin(GL_POINTS);

    for (i = 0; i < 360; i+= 0.6){
        x_cord = x + r*cos(toradian((float)i));
        y_cord = y + r*sin(toradian((float)i));
        glVertex2f(x_cord, y_cord);
    }
    glEnd();
    glFlush();
}

void draw_half_circle(float x, float y, float r, int fill,float angle){
    float i;
    float x_cord, y_cord;

    if (fill)
        glBegin(GL_POLYGON);
    else
        glBegin(GL_POINTS);

    for (i = angle; i < angle+180; i+= 0.6){
        x_cord = x + r*cos(toradian((float)i));
        y_cord = y + r*sin(toradian((float)i));
        glVertex2f(x_cord, y_cord);
    }
    glEnd();
    glFlush();
}
void plastic_waste(int x, int y)
{
    glBegin(GL_POLYGON);
    glVertex2f(x,y);
    glVertex2f(x + 32,y - 10);
    glVertex2f(x + 46,y + 31);
    glVertex2f(x + 62,y + 10);
    glVertex2f(x + 33,y - 20);
    glEnd();
}

void plastic_waste2(int x, int y)
{
    glBegin(GL_POLYGON);
    glVertex2f(x,y);
    glVertex2f(x + 26,y - 20);
    glVertex2f(x + 46,y + 10);
    glVertex2f(x + 56,y);
    glVertex2f(x + 31,y - 20);
    glVertex2f(x + 3,y - 18);
    glEnd();
}

void plastic_waste3(int x, int y)
{
    glBegin(GL_POLYGON);
    glVertex2f(x , y);
    glVertex2f(x + 15, y + 5);
    glVertex2f(x + 22 , y - 20);
    glVertex2f(x + 4, y - 12);
    glEnd();
}

class mountain{
public:
   mountain(){
    //printf("object created\n" );
  }
  void sky_full_of_stars() {
    glColor3ub(255,255,255);
    glBegin(GL_POINTS);
    for (int i = 0; i < 1000; i++) {
      glVertex2f(list_of_randoms[i],list_of_randoms[1000-i]);
    }
    glEnd();
  }
  void draw_earth(/* arguments */) {
    glColor3ub(50,50,255);
    draw_circle(500,500,100,1);
  }
  void draw_moon(float x,float y){
    glColor3ub(255,255,255);
    draw_circle(x,y,20,1);
  }
  void draw_satelite(float x,float y){
    glColor3ub(100,100,100);
    draw_rectangle(x,y,20,20,1);
  }
  void draw_rocket(int x,int y){
    glBegin(GL_POLYGON);
    glVertex2f(x,y);
    glVertex2f(x+10,y+10);
    glVertex2f(x+10,y+10+14.142);
    glVertex2f(x,y+14.142);
    glEnd();
    glColor3ub(255,0,0);
    glBegin(GL_POLYGON);

    glVertex2f(x+10,y+10);
    glVertex2f(x+20,y+10+14.142);
    glVertex2f(x+10,y+25);
    glEnd();
  }
};

void init()
{
	glClearColor(0.0,0.0,0.98,1.0);
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	gluOrtho2D(0,1000,0,1000);
}
void myReshape(int w,int h)
{
  printf("resized\n w=%d,h=%d",w,h);
	glClearColor(0.0,0.0,0.0,1.0);
	//glClearColor(0.50,0.88,0.96,0);
	glViewport(0,0,w,h);
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	if(w<=h)
		glOrtho(0,1000,0*(GLfloat)h/(GLfloat)w,1000*(GLfloat)h/(GLfloat)w,0,1000);
	else
		glOrtho(0*(GLfloat)w/(GLfloat)h,1000*(GLfloat)w/(GLfloat)h,0,1000,0,1000);
	glMatrixMode(GL_MODELVIEW);
	glutPostRedisplay();

}

void display_scene3(){
  mountain m;
  glClearColor(0.0,0.0,0.0,1.0);
  glClear(GL_COLOR_BUFFER_BIT);
  m.sky_full_of_stars();
  m.draw_earth();
  int masked_motion = motion_var%360;
  int x_val = 500+200*sin(toradian(masked_motion));
  int y_val = 500+200*cos(toradian(masked_motion));
  if(masked_motion == 180){
    printf("%u\n", motion_var);
  }
  m.draw_moon(x_val,y_val);
  // m.draw_satelite(x_val+50*sin(toradian(masked_motion*5)),y_val+50*cos(toradian(masked_motion*5)));
  if(motion_var%1000 < 230){
    m.draw_rocket(motion_var%1000*1.4,motion_var%1000*1.4);
  }
  else{
    m.draw_satelite(x_val+50*sin(toradian(masked_motion*-5)),y_val+50*cos(toradian(masked_motion*-5)));
  }
  glPointSize(10);
  glBegin(GL_POINTS);
    glVertex2f((1000-motion_var)%1000,(700+((1000-motion_var*10)%1000))*10);
  glEnd();
  glPointSize(1);
  glFlush();
  glutSwapBuffers();
}
void mouse(int button, int state,int x, int y){
  printf("called\n");
  if(state == GLUT_DOWN && button == GLUT_LEFT_BUTTON) {
    printf("x: %d, y: %d",x,y);
  }
}

void idle_func(){
  if (motion_var < 0){
    motion_var = 0;
  }
  motion_var++;
  glutPostRedisplay();
}
int main(int argc,char **argv)
{
	glutInit(&argc,argv);
	glutInitDisplayMode(GLUT_DOUBLE|GLUT_RGB);
	glutInitWindowSize(1000,1000);
	glutCreateWindow("Scene1");
  glutMouseFunc(mouse);
	init();
  glutIdleFunc(idle_func);
	//glutReshapeFunc(myReshape);
	glutDisplayFunc(display_scene3);
	glutMainLoop();
}
