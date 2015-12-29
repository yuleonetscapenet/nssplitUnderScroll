//
//  myScrollView.h
//  testNSSplitUnderScorll
//
//  Created by Leo Yu on 12/27/15.
//  Copyright © 2015 leo yu. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface myScrollView : NSScrollView
{
NSPoint currentPoint;
NSPoint downPoint;
}
@end
