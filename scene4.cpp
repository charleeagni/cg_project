#include "scenes.h"
#include "utilities.h"


void display_scene4(){
    float water_blue[] = {66/255.0, 134/255.0, 244/255.0};
    float factory_body_bottom[] = {244/255.0, 155/255.0, 66/255.0}; //Light Brown
    float factory_body_top[] = {237/255.0, 125/255.0, 14/255.0}; //Dark Brown
    float factory_chimney[] = {165/255.0, 163/255.0, 154/255.0}; //Gray
    float factory_door[] = {0, 0, 0};
    float factory_window[] = {1, 1, 1};
    float factory_sewage_pipe[] = {66/255.0, 64/255.0, 59/255.0}; //Light Black

    glClearColor(1, 1, 1, 0);
    glClear(GL_COLOR_BUFFER_BIT);

    //Water channel
    glColor3fv(water_blue);
    glBegin(GL_POLYGON);
    glVertex2f(0, 1000);
    glVertex2f(500, 0);
    glVertex2f(0, 0);
    glEnd();
    glFlush();

    //Factory
    int base_x = 500, base_y = 50;

    glColor3fv(factory_body_bottom);
    draw_rectangle(base_x, base_y, 400, 400, 1); //Base

    glColor3fv(factory_body_top);
    draw_rectangle(base_x+25, base_y+400, 350, 300, 1); //Top

    glColor3fv(factory_door);
    draw_rectangle(base_x + 180, base_y, 40, 100, 1); //Door

    glColor3fv(factory_window);
    draw_rectangle(base_x + 50, base_y + 200, 100, 100, 1); //Bottom Left Window
    draw_rectangle(base_x + 250, base_y + 200, 100, 100, 1); //Bottom Right Window  
    draw_rectangle(base_x+25+25, base_y+400+30, 80, 200, 1); //Top Left Window
    draw_rectangle(base_x+25+240, base_y+400+30, 80, 200, 1); //Top Right Window

    glColor3fv(factory_chimney);
    draw_rectangle(base_x+100, base_y+400+300, 30, 100, 1); //Chimney Left
    draw_rectangle(base_x+100+150, base_y+400+300, 30, 100, 1); //Chimney Right

    glColor3fv(factory_sewage_pipe);
    draw_rectangle(base_x-100, base_y + 30, 100, 50, 1); //Sewage Pipe

    //Smoke
    glColor3f(0, 0, 0);
    draw_circle(base_x+125, base_y+700+motion_var, 30, 1);
    glutSwapBuffers();

}
