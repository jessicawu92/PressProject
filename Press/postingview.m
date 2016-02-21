//
//  postingview.m
//  posting
//
//  Created by Student on 2/20/16.
//  Copyright (c) 2016 Student. All rights reserved.
//

#import "postingview.h"
#import "GetLoc.h"
@import UIKit;

@interface postingview ()

@end

@implementation postingview

@synthesize Titlefield, DescField, lettercount;

- (IBAction)doneKeyButton:(id)sender
{
    [sender resignFirstResponder];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationItem.rightBarButtonItem = nil;
    self.DescField.delegate = self;
    self.title = @"Post News";
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)count
{
    NSUInteger textLength = [DescField.text length];
    lettercount.text =[NSString stringWithFormat:@"%lu",(unsigned long)textLength];
}

- (BOOL)textView:(UITextView *)DescField shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    if ( [text isEqualToString:@"\n"] ) {
        [self count];
        [DescField resignFirstResponder];
    }
    
    return YES;
}


- (IBAction)submitpost:(id)sender {
    NSString * titleInput = Titlefield.text;
    NSString * descInput = DescField.text;
    [self.navigationController popViewControllerAnimated:YES];

    
}
@end
