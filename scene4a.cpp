#include<stdio.h>
#include <GLUT/glut.h>
#include<stdio.h>
#include<math.h>
#include<stdlib.h>

int motion_var = 0;
float factory_body_bottom[3]; //Light Brown
float factory_body_top[] = {237/255.0, 125/255.0, 14/255.0}; //Dark Brown

float factory_chimney[] = {165/255.0, 163/255.0, 154/255.0}; //Gray
float factory_door[] = {0, 0, 0};
float factory_window[] = {1, 1, 1};
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

void make_factory(int base_x, int base_y, int factor){

    glColor3fv(factory_body_bottom);
    draw_rectangle(base_x, base_y, 400/factor, 400/factor, 1); //Base

    glColor3fv(factory_body_top);
    draw_rectangle(base_x+25/factor, base_y+400/factor, 350/factor, 300/factor, 1); //Top

    glColor3fv(factory_door);
    draw_rectangle(base_x + 180/factor, base_y, 40/factor, 100/factor, 1); //Door

    glColor3fv(factory_window);
    draw_rectangle(base_x + 50/factor, base_y + 200/factor, 100/factor, 100/factor, 1); //Bottom Left Window
    draw_rectangle(base_x + 250/factor, base_y + 200/factor, 100/factor, 100/factor, 1); //Bottom Right Window
    draw_rectangle(base_x+(25+25)/factor, base_y+(400+30)/factor, 80/factor, 200/factor, 1); //Top Left Window
    draw_rectangle(base_x+(25+240)/factor, base_y+(400+30)/factor, 80/factor, 200/factor, 1); //Top Right Window

    glColor3fv(factory_chimney);
    draw_rectangle(base_x+100/factor, base_y+(400+300)/factor, 30/factor, 100/factor, 1); //Chimney Left
    draw_rectangle(base_x+(100+150)/factor, base_y+(400+300)/factor, 30/factor, 100/factor, 1); //Chimney Right
}
void truck(int x,int y,float angle){
  glColor3ub(0,50,0);
  // drawing the trailer
  glPushMatrix();
  {
    glTranslatef(x+200,y,0);
    glRotatef(360-angle,0,0,1);
    glTranslatef(-x-200,-y,0);

    glBegin(GL_POLYGON);
      glVertex2f(x,y);
      glVertex2f(x+200,y);
      glVertex2f(x+200,y+100);
      glVertex2f(x+10,y+100);
      glVertex2f(x,y+125);
    glEnd();
    glColor3ub(150,150,0);
    draw_rectangle(x+200,y,5,100,1);
    glColor3ub(0,50,0);

    // back attachment
    if(angle == 0)
      draw_rectangle(x+205,y-20,10,120,1);
    else
      draw_rectangle(x+205,y+20,10,120,1);
    glColor3ub(30,30,30);


  }
  glPopMatrix();

  // wheels sit here
  draw_rectangle(x,y-20,200,20,1);
  draw_rectangle(x+20,y-40,80,20,1);
  draw_rectangle(x+185,y-40,10,20,1);
  // wheels
  glColor3ub(75,75,75);
  draw_circle(x+130,y-40,16,1);
  glColor3ub(30,30,30);
  draw_circle(x+130,y-40,15,1);
  glColor3ub(0,0,0);
  draw_circle(x+130,y-40,5,1);
  glColor3ub(100,100,100);
  draw_circle(x+130,y-40,1,1);

  glColor3ub(30,30,30);
  glColor3ub(75,75,75);
  draw_circle(x+165,y-40,16,1);
  glColor3ub(30,30,30);
  draw_circle(x+165,y-40,15,1);
  glColor3ub(0,0,0);
  draw_circle(x+165,y-40,5,1);
  glColor3ub(100,100,100);
  draw_circle(x+165,y-40,1,1);

  // engine part
  glColor3ub(75,0,0);
  glBegin(GL_POLYGON);
    glVertex2f(x-3,y);
    glVertex2f(x-50,y);
    glVertex2f(x-50,y+50);
    glVertex2f(x-30,y+100);
    glVertex2f(x-3,y+100);
  glEnd();
  glColor3ub(30,30,30);
  glBegin(GL_POLYGON);
    glVertex2f(x-3,y);
    glVertex2f(x-3,y-30);
    glVertex2f(x-50,y-30);
    glVertex2f(x-50,y);
  glEnd();

  // windows

  glBegin(GL_POLYGON);
    glVertex2f(x-45,y+50);
    glVertex2f(x-35,y+75);
    glVertex2f(x-30,y+95);
    glVertex2f(x-5,y+95);
    glVertex2f(x-5,y+50);
  glEnd();

  draw_rectangle(x-15,y+30,10,5,1);


  glColor3ub(0,0,0); // equate this to the background color

  draw_half_circle(x-25,y-30,18,1,0);

  glColor3ub(75,75,75);
  draw_circle(x-25,y-40,16,1);
  glColor3ub(30,30,30);
  draw_circle(x-25,y-40,15,1);
  glColor3ub(0,0,0);
  draw_circle(x-25,y-40,5,1);
  glColor3ub(100,100,100);
  draw_circle(x-25,y-40,1,1);

}


void display_scene4(){
    float road[] = {0, 0, 0};
    float road_lines[] = {1, 1, 1};
    float tree_bark[] = {165/255.0, 42/255.0, 42/255.0};
    float tree_leaves[] = {0, 100/255.0, 0};
    float garbage_can[] = {1, 0, 0};
    float car[] = {1, 1, 0};


    glClearColor(135/255.0, 206/255.0, 235/255.0, 0);
    glClear(GL_COLOR_BUFFER_BIT);

    //Road
    glColor3fv(road);
    draw_rectangle(0, 200, 1000, 400, 1);

    //Road Lines
    glColor3fv(road_lines);
    draw_rectangle(0, 400, 100, 20, 1);
    draw_rectangle(200, 400, 100, 20, 1);
    draw_rectangle(400, 400, 100, 20, 1);
    draw_rectangle(600, 400, 100, 20, 1);
    draw_rectangle(800, 400, 100, 20, 1);
    draw_rectangle(950, 400, 100, 20, 1);

    truck(1000-motion_var%1000,300,0);
    //Factory
    factory_body_bottom[0] = 244/255.0;
    factory_body_bottom[1] = 155/255.0;
    factory_body_bottom[2] = 66/255.0;

    make_factory(300, 600, 2);

    factory_body_bottom[0] = 33/255.0;
    factory_body_bottom[1] = 200/255.0;
    factory_body_bottom[2] = 170/255.0;

    make_factory(600, 600, 2);


    factory_body_bottom[0] = 45/255.0;
    factory_body_bottom[1] = 79/255.0;
    factory_body_bottom[2] = 200/255.0;

    make_factory(000, 600, 2);

    glColor3ub(0, 255, 0);
    draw_rectangle(0, 0, 1000, 200, 1);

    glutSwapBuffers();
}
void init()
{
	glClearColor(0.0,0.0,0.98,1.0);
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	gluOrtho2D(0,1000,0,1000);
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
  // glutMouseFunc(mouse);
	init();
  glutIdleFunc(idle_func);
	//glutReshapeFunc(myReshape);
	glutDisplayFunc(display_scene4);
	glutMainLoop();
}
