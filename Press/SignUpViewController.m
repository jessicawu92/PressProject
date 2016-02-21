//
//  SignUpViewController.m
//  Press
//
//  Created by Jessica Wu on 2/21/16.
//  Copyright © 2016 HackNYU. All rights reserved.
//

#import "SignUpViewController.h"
#import "User.h"

@interface SignUpViewController ()
@property (weak, nonatomic) IBOutlet UITextField *firstName;
@property (weak, nonatomic) IBOutlet UITextField *lastName;
@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITextField *phoneNumber;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *confirmPassword;

@end

@implementation SignUpViewController

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
- (IBAction)submitAction:(UIButton *)sender {
    User *user = [[User alloc] init];
    user.firstName = self.firstName.text;
    user.lastName = self.lastName.text;
    user.email = self.email.text;
    user.phoneNumber = self.phoneNumber.text;
    user.password = self.password.text;
    user.username = self.username.text;
    user.confirmPassword = self.confirmPassword.text;
    //TODO: do all the check statement;
    
}

@end
