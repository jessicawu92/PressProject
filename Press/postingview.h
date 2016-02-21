//
//  postingview.h
//  posting
//
//  Created by Student on 2/20/16.
//  Copyright (c) 2016 Student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface postingview : UIViewController <UITextFieldDelegate, UITextViewDelegate>


@property (weak, nonatomic) IBOutlet UITextField *Titlefield;

@property (retain, nonatomic) IBOutlet UITextView *DescField;

@property (weak, nonatomic) IBOutlet UILabel *lettercount;

- (IBAction)submitpost:(id)sender;




@end
