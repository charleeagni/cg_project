#include <stdio.h>
#include <math.h>
#include "utilities.h"


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
