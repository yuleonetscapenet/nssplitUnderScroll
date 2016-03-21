//
//  myViewController.m
//  testNSSplitUnderScorll
//
//  Created by leo yu on 12/25/15.
//  Copyright © 2015 leo yu. All rights reserved.
//

#import "myViewController.h"

@interface myViewController ()

@end

@implementation myViewController

-(instancetype) init
{
    self = [super initWithNibName:@"myViewController" bundle:nil];
    if ( self )
    {
        //init code
    }
    return self;
}

-(void)dealloc
{
    NSLog(@"dealloc");
}

-(NSInteger) numberOfRowsInTableView:(NSTableView*)tableView
{
    return 1;
}

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    NSLog(@"viewfortale");
    
    NSTableCellView *result = [tableView makeViewWithIdentifier:tableColumn.identifier owner:self];
    result.textField.stringValue = @"test string";
    return result;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
     NSLog(@"view did load");
}

@end
