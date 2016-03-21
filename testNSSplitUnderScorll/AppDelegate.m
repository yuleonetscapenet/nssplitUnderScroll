//
//  AppDelegate.m
//  testNSSplitUnderScorll
//
//  Created by leo yu on 12/24/15.
//  Copyright © 2015 leo yu. All rights reserved.
//

#import "AppDelegate.h"
#import "myViewController.h"

@interface AppDelegate ()
@property (weak) IBOutlet NSScrollView *myScrollView;
@property (weak) IBOutlet NSSplitView *mySplitView;

@property(strong,nonatomic) myViewController *viewCtrl;
@property(strong,nonatomic) myViewController *viewCtrl2;
@property(strong, nonatomic)myViewController *viewCtrl3;
@property(strong, nonatomic)myViewController *viewCtrl4;


@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

-(void) loadTablesIntoSplitView
{
    self.viewCtrl = [[myViewController alloc]init];
    [_mySplitView addSubview:self.viewCtrl.view];

    self.viewCtrl2 = [[myViewController alloc]init];
    [_mySplitView addSubview:self.viewCtrl2.view];
    
    self.viewCtrl3 = [[myViewController alloc]init];
    [_mySplitView addSubview:self.viewCtrl3.view];
    
    self.viewCtrl4 = [[myViewController alloc]init];
    [_mySplitView addSubview:self.viewCtrl4.view];
       
    //scroll manually
    [NSAnimationContext beginGrouping];
        [[NSAnimationContext currentContext] setDuration:1.0];
        NSClipView* clipView = [_myScrollView contentView];
        NSPoint newOrigin = [clipView bounds].origin;
        newOrigin.x = [_myScrollView contentView].frame.size.width ;
        [[clipView animator] setBoundsOrigin:newOrigin];
    [NSAnimationContext endGrouping];
    
    int num = [_mySplitView.subviews count];
    NSLog(@"children = %d", num);
}


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    [self loadTablesIntoSplitView];
    NSLog(@"done");
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
