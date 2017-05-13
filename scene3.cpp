#include<stdio.h>
#include <GLUT/glut.h>
#include<stdio.h>
#include<math.h>
#include<stdlib.h>
#define DEBUG 0
int motion_var = 0;
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


class mountain{
public:
   mountain(){
    if(DEBUG)
      printf("object created\n");
  }
  void draw_mountain() {
    float a = 300-motion_var,r = 0.15;
    for(int i =0;i<1000;i++){
      float width_gp = a+(i-1)*r;
      // printf("%f\n",width_gp);
      if(1000.0-1*i < 600 && 1000.0-1*i > 580){
        int factors = (20-(i*2)%20);
        // printf("colored\n");
        // glColor3ub(255,163,245);
        a = a + factors;
        draw_rectangle(0.0,1000.0-1*i,width_gp,10.0,1);
      }
      else if(1000.0-1*i < 700 && 1000.0-1*i > 680){
        if(DEBUG)
        printf("colored\n");
        glColor3ub(255,163,245);
        draw_rectangle(0.0,1000.0-1*i,width_gp,10.0,1);
      }
      else {
        glColor3ub(161,104,0);
        draw_rectangle(0.0,1000.0-1*i,width_gp,10.0,1);
      }
    }
  }
  void draw_road() {
    float a = 300,r = 0.15,i,width_gp;
    for(i =590; i<610;i++) {
      width_gp = a+(i-1)*r;
      glColor3ub(0,0,0);
      draw_rectangle(width_gp-30,i,180-(i-590),1,1);
    }
    if(DEBUG)
    printf("final number:(%f,%f)\n",width_gp-30+180-(i-590),i);
  }
  void draw_plastic() {
    int x = 521,y = 610;
    glBegin(GL_QUADS);
      glVertex2f(x,y);
      glVertex2f(x,y+5);
      glVertex2f(x-5,y+15);
      glVertex2f(x-5,y+35);
      glVertex2f(x+7,y+35);
      glVertex2f(x+7,y+15);
      glVertex2f(x+2,y+15);
      glVertex2f(x,y);
      glEnd();
  }
  void draw_fense() {
    int x = 559,y = 590;
    // glColor3ub(255,165,0);

    glColor3ub(255,255,255);
    glBegin(GL_POLYGON);
      glVertex2f(x,y);
      glVertex2f(x,y+5);
      glVertex2f(x-5,y+5);
      glVertex2f(x-5,y+25);
      glVertex2f(x+7,y+25);
      glVertex2f(x+7,y+5);
      glVertex2f(x+2,y+5);
      glVertex2f(x,y);
    glEnd();
    glColor3ub(255,165,0);
    glBegin(GL_QUADS);
      glVertex2f(x-5,y+15);
      glVertex2f(x+7,y+25);
      glVertex2f(x+7,y+20);
      glVertex2f(x-5,y+20);
    glBegin(GL_QUADS);
      glVertex2f(x-5,y+15-7);
      glVertex2f(x+7,y+25-7);
      glVertex2f(x+7,y+20-7);
      glVertex2f(x-5,y+20-7);
    glEnd();
  }
  void sky_full_of_stars() {
    glColor3ub(255,255,255);
    glPointSize(1.5);
    glBegin(GL_POINTS);

    for(int i=0;i<1000;i++){

      int x = rand();
      int y = rand();
      x = x%1000;
      y = y%1000;
      if(x>350 && y>650) {
        glVertex2f(x,y);
        if(DEBUG)
        printf("point added\n" );
      }
      else if(x>650){
        glVertex2f(x,y);
        if(DEBUG)
        printf("point added\n" );
      }
    }
    glEnd();
    draw_circle(900,900,25,1);
    glColor3f(0.25,0.25,0.25);
    draw_circle(905,915,25,1);
  }
};

void idle_func(){
  if (motion_var < 0){
    motion_var = 0;
  }
  motion_var++;
  glutPostRedisplay();

}

void init()
{
	glClearColor(0.529,0.808,0.98,1.0);
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	gluOrtho2D(0,1000,0,1000);
}
void myReshape(int w,int h)
{
  if(DEBUG)
  printf("resized\n w=%d,h=%d",w,h);
	glClearColor(0.529,0.808,0.98,1.0);
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
  glClearColor(0.25,0.25,0.25,0);
  glClear(GL_COLOR_BUFFER_BIT);
  m.draw_mountain();
  m.draw_road();
  m.draw_fense();
  m.sky_full_of_stars();
  if(DEBUG)
    printf("yolo\n");
  glFlush();
  glutSwapBuffers();
}
void mouse(int button, int state,int x, int y){
  if(DEBUG)
    printf("called\n");
  if(state == GLUT_DOWN && button == GLUT_LEFT_BUTTON) {
    if(DEBUG)
      printf("x: %d, y: %d",x,y);
  }
}
int main(int argc,char **argv)
{
	glutInit(&argc,argv);
	glutInitDisplayMode(GLUT_DOUBLE|GLUT_RGB);
	glutInitWindowSize(1000,1000);
	glutCreateWindow("Scene1");
  glutIdleFunc(idle_func);
  glutMouseFunc(mouse);
	init();
	//glutReshapeFunc(myReshape);
	glutDisplayFunc(display_scene3);
	glutMainLoop();

}
