//
//  loginScreenViewController.m
//  loginScreen
//
//  Created by Niela Sultana on 2/20/16.
//  Copyright © 2016 Niela Sultana. All rights reserved.
//

#import "loginScreenViewController.h"
#import "loginView.h"
#import "signUpPage.h"

@interface loginScreenViewController ()

@end

@implementation loginScreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)login:(id)sender {
    loginView *loginVC = [[loginView alloc] init];
    [self.navigationController pushViewController:loginVC animated:YES];
}

- (IBAction)signUp:(id)sender {
    signUpPage *signUpVC = [[signUpPage alloc] init];
    [self.navigationController pushViewController:signUpVC animated:YES];
}
@end
