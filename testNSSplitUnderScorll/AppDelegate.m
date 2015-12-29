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
@property(strong, nonatomic)myViewController *viewCtrl5;


@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

-(void) loadTablesIntoSplitView
{
   // NSRect frame = NSMakeRect(0, 0, 100, 200);
    self.viewCtrl = [[myViewController alloc]init];
   // self.viewCtrl.view.frame = frame;
    [_mySplitView addSubview:self.viewCtrl.view];

    self.viewCtrl2 = [[myViewController alloc]init];
    [_mySplitView addSubview:self.viewCtrl2.view];
    
    self.viewCtrl3 = [[myViewController alloc]init];
    [_mySplitView addSubview:self.viewCtrl3.view];
    
    self.viewCtrl5 = [[myViewController alloc]init];
    [_mySplitView addSubview:self.viewCtrl5.view];
    
    self.viewCtrl4 = [[myViewController alloc]init];
    [_mySplitView addSubview:self.viewCtrl4.view];
     
}


-(void) loadTablesOnly
{
    myViewController *viewCtrl = [[myViewController alloc]init];
    [_mySplitView addSubview:viewCtrl.view];

}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
   // NSRect frame = NSMakeRect(0, 0, 300, 400);
   // _mySplitView.frame = frame;
    
    
   // _myScrollView.frame = _window.contentView.frame;
   // _mySplitView.frame = _myScrollView.frame;
    
    [self loadTablesIntoSplitView];
    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
