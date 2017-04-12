#include <stdio.h>
#include <stdlib.h>
#include "utilities.h"
#include "scenes.h"


int scene_number = 0;

void display(){
    switch(scene_number){
        case 2:display_scene2();
               break;

        case 4:display_scene4();
               break;

        default:
               break;
    }
}


void init(){
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    gluOrtho2D(0, 1000, 0, 1000);
}

void keyboard_handler(unsigned char key, int x, int y){
    if (key == 97){ //a
        scene_number -= 1;
    }
    if (key == 100){ //d
        scene_number += 1; 
    }
    printf("Scene Changed to %d\n", scene_number);
    display();
}

int main(int argc, char** argv){
    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_SINGLE|GLUT_RGBA);
    glutInitWindowPosition(0, 0);
    glutInitWindowSize(1000, 1000);
    glutCreateWindow("Scene 2");
    init();
    glutDisplayFunc(display);
    glutKeyboardFunc(keyboard_handler);
    glutMainLoop();
}
