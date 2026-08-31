#include <stdio.h>
#include <stdlib.h>
#include "utilities.h"
#include "scenes.h"


int scene_number = 2, motion_var = 0;

const int scenes[] = {2, 4, 8};
const int scene_count = sizeof(scenes) / sizeof(scenes[0]);

void display(){
    switch(scene_number){
        case 2:display_scene2();
               break;
        case 4:display_scene4();
               break;
        case 8:display_scene8();
                break;
        default: display_scene2();
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
    (void)x;
    (void)y;

    if (key == 27 || key == 'q' || key == 'Q') {
        exit(0);
    }

    int direction = 0;
    if (key == 'a' || key == 'A') {
        direction = -1;
    } else if (key == 'd' || key == 'D') {
        direction = 1;
    }

    if (direction != 0) {
        int current = 0;
        while (current < scene_count && scenes[current] != scene_number) {
            current++;
        }
        scene_number = scenes[(current + direction + scene_count) % scene_count];
        motion_var = 0;
        printf("Scene changed to %d\n", scene_number);
        glutPostRedisplay();
    }
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
