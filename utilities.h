#ifndef UTILITIES_H
#define UTILITIES_H

#ifdef __APPLE__
#include <GLUT/glut.h>
#else
#include <GL/glut.h>
#endif

float toradian(float degree);
void draw_rectangle(float x, float y, float w, float h, int fill);
void draw_circle(float x, float y, float r, int fill);

#endif
