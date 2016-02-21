//
//  InitialViewController.m
//  Press
//
//  Created by Jessica Wu on 2/20/16.
//  Copyright © 2016 HackNYU. All rights reserved.
//

#import "InitialViewController.h"
#import "loginView.h"
#import "signUpPage.h"
#import "FeedViewController.h"
#import "SignUpViewController.h"

@interface InitialViewController ()

@end

@implementation InitialViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)signInAction:(UIButton *)sender {
    SignUpViewController *signUpVC = [[SignUpViewController alloc]init];
    [self.navigationController pushViewController:signUpVC animated:YES];
    
}
- (IBAction)logInAction:(UIButton *)sender {
    loginView *loginVC = [[loginView alloc]init];
    [self.navigationController pushViewController:loginVC animated:YES];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
