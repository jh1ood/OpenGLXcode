#import <Foundation/Foundation.h>

#import "MyOpenGLView.h"
#include <OpenGL/gl.h>

@implementation MyOpenGLView

static void drawAnObject ()
{
    glColor3f(0.85f, 0.85f, 0.0f);
    glBegin(GL_TRIANGLES);
    {
        glVertex3f(  0.0,  0.8, 0.0);
        glVertex3f( -0.3, -0.3, 0.0);
        glVertex3f(  0.3, -0.3 ,0.0);
    }
    glEnd();
    
    glColor3f(0.0f, 0.85f, 0.85f);
    glBegin(GL_TRIANGLES);
    {
        glVertex3f( -0.7,  0.6, 0.0);
        glVertex3f( -0.9, -0.3, 0.0);
        glVertex3f( -0.5, -0.3 ,0.0);
    }
    glEnd();
    
    glColor3f(0.85f, 0.00f, 0.85f);
    glBegin(GL_TRIANGLES);
    {
        glVertex3f( 0.7,  0.6, 0.0);
        glVertex3f( 0.9, -0.3, 0.0);
        glVertex3f( 0.5, -0.3 ,0.0);
    }
    glEnd();


}

-(void) drawRect: (NSRect) bounds
{
    glClearColor(0.7, 0.7, 0.7, 0);
    glClear(GL_COLOR_BUFFER_BIT);
    drawAnObject();
    glFlush();
}

@end