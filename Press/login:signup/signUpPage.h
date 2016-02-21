//
//  signUpPage.h
//  loginScreen
//
//  Created by Niela Sultana on 2/20/16.
//  Copyright © 2016 Niela Sultana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface signUpPage : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *firstNinput;

@property (weak, nonatomic) IBOutlet UITextField *lastNinput;

@property (weak, nonatomic) IBOutlet UITextField *eAddr;

@property (weak, nonatomic) IBOutlet UITextField *phoneNum;

@property (weak, nonatomic) IBOutlet UITextField *userName;

@property (weak, nonatomic) IBOutlet UITextField *userPW;


@property (weak, nonatomic) IBOutlet UITextField *confirmPW;


- (IBAction)return:(id)sender;


- (IBAction)contAndSave:(id)sender;

@end

