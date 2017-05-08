#include "scenes.h"
#include "utilities.h"


void display_scene8(){
    float road[] = {0, 0, 0};
    float road_lines[] = {1, 1, 1};
    float tree_bark[] = {165/255.0, 42/255.0, 42/255.0};
    float tree_leaves[] = {0, 100/255.0, 0};
    float garbage_can[] = {1, 0, 0};
    float car[] = {1, 1, 0};

    glClearColor(0, 1, 0, 0);
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
   
    //Tree
    glColor3fv(tree_bark);
    draw_rectangle(150, 650, 50, 200, 1);
    glColor3fv(tree_leaves);
    draw_circle(175, 850, 100, 1);

    //Garbage Can
    glColor3fv(garbage_can);
    glBegin(GL_POLYGON);
        glVertex2f(800, 620);
        glVertex2f(850, 620);
        glVertex2f(870, 750);
        glVertex2f(780, 750);
    glEnd();

    glutSwapBuffers();
}
