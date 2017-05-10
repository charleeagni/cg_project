#include <stdio.h>
#include <stdlib.h>
#include "utilities.h"
#include "scenes.h"


int scene_number = 0, motion_var = 0;

void display(){
    switch(scene_number){
        case 2:display_scene2();
               break;
	case 3: display_scene3();
	      break;
        case 4:display_scene4();
               break;
        case 8:display_scene8();
                break;
        default:
               break;
    }
}

void idle_func(){
    switch(scene_number){
        case 2: motion_var++;
                glutPostRedisplay();
                break;
        case 4: motion_var++;
                glutPostRedisplay();
                break;
        case 8: motion_var++;
                glutPostRedisplay();
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
        motion_var = 0;
    }
    if (key == 100){ //d
        scene_number += 1; 
        motion_var = 0;
    }
    printf("Scene Changed to %d\n", scene_number);
    display();
}

int main(int argc, char** argv){
    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_DOUBLE|GLUT_RGBA);
    glutInitWindowPosition(0, 0);
    glutInitWindowSize(1000, 1000);
    glutCreateWindow("Effect of Plastic on the Environment");
    init();
    glutDisplayFunc(display);
    glutIdleFunc(idle_func);
    glutKeyboardFunc(keyboard_handler);
    glutMainLoop();
}
