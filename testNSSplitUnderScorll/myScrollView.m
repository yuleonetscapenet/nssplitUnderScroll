//
//  myScrollView.m
//  testNSSplitUnderScorll
//
//  Created by Leo Yu on 12/27/15.
//  Copyright © 2015 leo yu. All rights reserved.
//

#import "myScrollView.h"

@implementation myScrollView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}


/*
- (void)mouseDown:(NSEvent *)theEvent {
    
    [self.nextResponder mouseDown:theEvent];
}
 */

/*
-(void) mouseDragged:(NSEvent*) event
{
     NSLog(@"Scroll Event: %@ \n", event);
    NSPoint p = [event locationInWindow];
    currentPoint = [self convertPoint:p fromView:nil];
    [self autoscroll:event];
    [self setNeedsDisplay:YES];
}
*/
/*
-(void)scrollWheel:(NSEvent *)theEvent {
    NSLog(@"Scroll Event: %@ \n", theEvent);
    [super scrollWheel:theEvent];
    [self.window.contentView scrollWheel:theEvent];
}


- (void)swipeWithEvent:(NSEvent *)event {
     NSLog(@" Event: %@ \n", event);
}
*/
@end
