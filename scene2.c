#include "scenes.h"
#include "utilities.h"

void display_scene2(){
    float road_grass[] = {44/255.0, 176/255.0, 55/255.0}; //grass green
    float road[] = {144/255.0, 108/255.0, 63/255.0}; //mud brown

    float house_body[] = {208/255.0, 195/255.0, 17/255.0}; //yellow
    float house_top[] = {246/255.0, 126/255.0, 13/255.0}; // orangish-brown
    float house_door[] = {95/255.0, 57/255.0, 21/255.0}; // dark-brown

    float mat_1[] = {200/255.0, 130/255.0, 130/255.0};
    float mat_2[] = {191/255.0, 158/255.0, 183/255.0};
    float mat_3[] = {180/255.0, 193/255.0, 166/255.0};

    glClearColor(44/255.0, 176/255.0, 55/255.0, 0);
    glClear(GL_COLOR_BUFFER_BIT);

    //Road
    glColor3fv(road);
    draw_circle(1000, 0, 750, 1); //Road
    glFlush();
    glColor3fv(road_grass);
    draw_circle(1000, 0, 250, 1); //grass

    //House
    glColor3fv(house_body);  //Body
    draw_rectangle(30, 500, 250, 300, 1);
    glFlush();

    glColor3fv(house_top); //Top
    glBegin(GL_POLYGON);
        glVertex2f(30, 800);
        glVertex2f(150, 950);
        glVertex2f(280, 800);
    glEnd();
    glFlush();

    glColor3fv(house_door); //Door
    glBegin(GL_POLYGON);
        glVertex2f(125, 500);
        glVertex2f(175, 500);
        glVertex2f(175, 600);
        glVertex2f(125, 600);
    glEnd();
    glFlush();

    //Mats

    glColor3fv(mat_1);  //Mat 1
    glBegin(GL_POLYGON);
        glVertex2f(200, 100);
        glVertex2f(300, 100);
        glVertex2f(350, 300);
        glVertex2f(250, 300);
    glEnd();
    glFlush();

    glColor3fv(mat_2);  //Mat 2
    glBegin(GL_POLYGON);
        glVertex2f(300, 600);
        glVertex2f(400, 500);
        glVertex2f(650, 700);
        glVertex2f(550, 750);
    glEnd();
    glFlush();
	
	glColor3fv(mat_3); //Mat 3
    draw_rectangle(750, 750, 180, 200, 1);
    glFlush();
}
