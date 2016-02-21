//
//  loginView.h
//  loginScreen
//
//  Created by Niela Sultana on 2/20/16.
//  Copyright © 2016 Niela Sultana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface loginView : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *inputUN;

@property (weak, nonatomic) IBOutlet UITextField *inputPW;

- (IBAction)forgotPW:(id)sender;

- (IBAction)return:(id)sender;

- (IBAction)savePW:(id)sender;

- (IBAction)contAndSave:(id)sender;

@end
