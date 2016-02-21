//
//  loginView.m
//  loginScreen
//
//  Created by Niela Sultana on 2/20/16.
//  Copyright © 2016 Niela Sultana. All rights reserved.
//

#import "loginView.h"

@interface loginView ()
@property (nonatomic, strong) NSString *dbPassword;
@end

@implementation loginView

@synthesize inputUN, inputPW;

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

- (IBAction)forgotPW:(id)sender {
}

- (IBAction)return:(id)sender {
}
- (IBAction)savePW:(id)sender {
}

- (IBAction)contAndSave:(id)sender {
    NSString *username = inputUN.text;
    NSString *password = inputPW.text;

}

- (void)loadJSONData{
//{
//    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"userInfo" ofType:@"json"];
//    
//    NSError *error = nil;
//    
//    NSData *rawData = [NSData dataWithContentsOfFile:filePath options:NSDataReadingMappedIfSafe error:&error];
//    
//    id JSONData = [NSJSONSerialization JSONObjectWithData:rawData options:NSJSONReadingAllowFragments error:&error];
//    
//    
//    if ([JSONData isKindOfClass:[NSDictionary class]])
//    {
//        NSDictionary *jsonDict = (NSDictionary *)JSONData;
//        
//        NSArray *loadedArray = [jsonDict objectForKey:self.username.text];
//        if ([loadedArray isKindOfClass:[NSArray class]])
//        {
//            for (NSDictionary *newDict in loadedArray)
//            {
//                LogInUserData *userData = [[userInfo alloc] init];
//                [userData loadWithDictionary:newDict];
//                self.dbPassword = ;
//            }
//        }
//    }
//    
//    [self.tableview reloadData];
}
@end











