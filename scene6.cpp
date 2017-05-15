#include<stdio.h>
#include <GLUT/glut.h>
#include<stdio.h>
#include<math.h>
#include<stdlib.h>

int motion_var = 0;
int hights_of_grass[1000];
int hight_stored = 0;
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
void draw_qus(float x,float y){
    glBegin(GL_POLYGON);
      glVertex2f(x+1,0);
      int x1 = rand()%10;
      if(rand()%2 == 0){
        glVertex2f(1+x,0);
        glVertex2f(1+x-x1,y);
        glVertex2f(1+x-x1+3,y);
        glVertex2f(1+x+3,0);
      }
      else {
        glVertex2f(1+x,0);
        glVertex2f(1+x+x1,y);
        glVertex2f(1+x+x1+3,y);
        glVertex2f(1+x+3,0);
      }
      glVertex2f(1+x,0);
      glVertex2f(1+x+x1,y);
      glVertex2f(1+x+x1+3,y);
      glVertex2f(1+x+3,0);
      // glVertex2f(x+1,0);
      // int x1 = rand()%3;
      // glVertex2f(1+x+x1,100);
      // int x2 = rand()%3;
      // glVertex2f(1+x+x2,200);
      // int x3 = rand()%3;
      // glVertex2f(1+x+x3,y-200);
      // glVertex2f(1+x+x3+2,y-200);
      // glVertex2f(1+x+x2+2,200);
      // glVertex2f(1+x+x1+2,100);
      // glVertex2f(1+x+1+2,0);
    glEnd();
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
        if((((int)i)/10)%2 == 0){
          glColor3ub(255,165,0);
        }
        else{
          glColor3ub(255,255,255);
        }
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
    printf("object created\n" );
  }
  void draw_fish(float x,float y,float size) {
    draw_half_circle(x,y,size,1,0.0);
    draw_half_circle(x,y,size,1,180.0);
    glColor3ub(0,0,0);
    draw_circle(x-7,y+5,2,1);
    glColor3ub(255,165,0);
    glBegin(GL_TRIANGLE_FAN);
      glVertex2f(x+size-5,y);
      glVertex2f(x+size+20,y+20);
      glVertex2f(x+size+20,y-20);
    glEnd();
    glBegin(GL_TRIANGLE_FAN);
      glVertex2f(x-5,y-size);
      glVertex2f(x+15,y-size);
      glVertex2f(x+15,y-size-15);
    glEnd();
    glBegin(GL_TRIANGLE_FAN);
      glVertex2f(x-5,y+size);
      glVertex2f(x+15,y+size);
      glVertex2f(x+15,y+size+15);
    glEnd();

  }
  void draw_ground() {

    glColor3ub(120,252,0);

    for(int i=0;i<1000;i++){
      float x = i;
      if(!hight_stored){
        float y = 200+rand()%100;
        hights_of_grass[i] = y;
        if(i == 999)
            hight_stored = 1;
      }

      float y = hights_of_grass[i];
      if(((int)i)%10 == 0){
          draw_qus(x,y);
      }
    }
  }
  void draw_dirt(){
    glPointSize(2);
    glColor3f(0,0,0);
    glBegin(GL_LINES);
    for(int i=0;i<1000;i++){
      glVertex2f(i/10+200,500+sin(i*50)*100);
    }
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
  glClearColor(0.8,0.8,1.0,1.0);
  glClear(GL_COLOR_BUFFER_BIT);
  printf("yolo\n");
  if(500.0-motion_var%500>200){
    m.draw_fish(500.0-motion_var%500,500.0,15.0);
  }
  else{
    m.draw_fish(200,500.0,15.0);
  }
  if(motion_var%1000>500){
      m.draw_fish(1000-motion_var%1000,800,15.0);
  }
  else {
      m.draw_fish(1000-motion_var%1000,800,15.0);
  }

  m.draw_fish(700.0,700.0,25.0);
  m.draw_ground();
  m.draw_dirt();
  // glColor3ub(0,0,0);
  // if(motion_var%1000>500){
  //   plastic_waste2(700+motion_var%1000/10,600+motion_var%1000/10);
  // }
  // else{
  //   plastic_waste2(700-motion_var%1000/10,600-motion_var%1000/10);
  // }
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
  // glutPostRedisplay();

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
