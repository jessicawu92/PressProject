//
//  signUpPage.m
//  loginScreen
//
//  Created by Niela Sultana on 2/20/16.
//  Copyright © 2016 Niela Sultana. All rights reserved.
//

#import "signUpPage.h"
@import UIKit;

@interface signUpPage ()
@property (weak, nonatomic) IBOutlet UIButton *agreementCheckBox;

@end

@implementation signUpPage

@synthesize firstNinput, lastNinput, eAddr, phoneNum, userName, userPW, confirmPW;



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)agreement:(id)sender {
    [self.agreementCheckBox setImage:[UIImage imageNamed:@"empty.png"] forState:UIControlStateNormal];
    
    UIImage *image1 = [UIImage imageNamed:@"empty.png"];
    UIImage *image2 = [UIImage imageNamed:@"checked.png"];
    [self.agreementCheckBox setImage:image1
            forState:UIControlStateNormal];
    if (self.agreementCheckBox.selected == 0) {
        self.agreementCheckBox.selected = 1;
        [self.agreementCheckBox setImage:image2
            forState:UIControlStateSelected];
    }
    else {
        self.agreementCheckBox.selected = 0;
        [self.agreementCheckBox setImage:image1
            forState:UIControlStateNormal];
    }

}

- (IBAction)return:(id)sender {
}

- (IBAction)contAndSave:(id)sender {
    NSString *firstName = firstNinput.text;
    NSString *lastName = lastNinput.text;
    NSString *emailAddr = eAddr.text;
    NSString *phoneNumber = phoneNum.text;
    NSString *userN = userName.text;
    NSString *passWord = userPW.text;
    NSString *confPassword = confirmPW.text;
}



@end
