//
//  testViewController.m
//  test
//
//  Created by Shiny Croospulle on 2/20/16.
//  Copyright © 2016 ShinyCroospulle. All rights reserved.
//

#import "testViewController.h"
#import "ProfileData.h"

@interface testViewController ()
@property (strong, nonatomic) IBOutlet UITextField *username;
@property (strong, nonatomic) IBOutlet UITextField *email;
@property (nonatomic, strong) NSMutableArray *loadedProfileData;


//@property (nonatomic, strong) NSMutableDictionary *keychainItemWrapper;


@end

@implementation testViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self loadJSONData];
    [self setupUI];
    
    
    
/*    UITextField *username = [[UITextField alloc] initWithFrame:CGRectMake(40, 30, 240, 30)];
    [username setBorderStyle:UITextBorderStyleRoundedRect];
    
    UITextField *email = [[UITextField alloc] initWithFrame:CGRectMake(40, 75, 240, 30)];
    [email setBorderStyle:UITextBorderStyleRoundedRect];
    
    UIButton *saveButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [saveButton setFrame:CGRectMake(80, 130, 160, 40)];
    [saveButton addTarget:self action:@selector(buttonPressed:) forControlEvents: UIControlEventTouchUpInside];
    
    KeychainItemWrapper *keychain =
    [[KeychainItemWrapper alloc] initWithIdentifier:@"TestAppLoginData" accessGroup:nil];
    
    - (void)buttonPressed:(UIButton *)button
    {
        if (button == testButton)
        {
            // Store username to keychain
            if ([username text])
                [keychain setObject:[username text] forKey:(id)kSecAttrAccount];
            
            // Store email to keychain
            if ([email text])
                [keychain setObject:[email text] forKey:(id)kSecValueData];
        }
    }
    
    // Get username from keychain (if it exists)
    [username setText:[keychain objectForKey:(id)kSecAttrAccount]];
    NSLog(@"username: %@", [_username text]);
    
    // Get password from keychain (if it exists)
    [_email setText:[keychain objectForKey:(id)kSecValueData]];
    NSLog(@"email: %@", [_email text]);*/

    /*KeychainItemWrapper *keychainItem = [[KeychainItemWrapper alloc] initWithIdentifier:@"YourAppLogin" accessGroup:nil];
    [keychainItem setObject:@"username" forKey:kSecValueData];
    [keychainItem setObject:@"email" forKey:kSecAttrAccount];
    // Do any additional setup after loading the view from its nib.*/
    /*self.userDefaults = [NSUserDefaults standardUserDefaults];
    [[NSUserDefaults standardUserDefaults] setValue:_username forKey:@"username"];
    [[NSUserDefaults standardUserDefaults] setValue:_email forKey:@"email"];
    [[NSUserDefaults standardUserDefaults] synchronize];*/
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadJSONData
{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"profileData" ofType:@"json"];
    NSError *error = nil;
    NSData *rawData = [NSData dataWithContentsOfFile:filePath options:NSDataReadingMappedIfSafe error:&error];

    id JSONData = [NSJSONSerialization JSONObjectWithData:rawData options:NSJSONReadingAllowFragments error:&error];
    [self.loadedProfileData removeAllObjects];
    if ([JSONData isKindOfClass:[NSDictionary class]])
    {
        NSDictionary *jsonDict = (NSDictionary *)JSONData;
        NSArray *loadedArray = [jsonDict objectForKey:@"(917)234-5678"];
        if ([loadedArray isKindOfClass:[NSArray class]])
        {
            for (NSDictionary *newDict in loadedArray)
            {
                ProfileData *profileData = [[ProfileData alloc] init];
                [profileData loadWithDictionary:newDict];
                [self.loadedProfileData addObject:profileData];
            }
//            ProfileData *profileData = [self.loadedProfileData objectAtIndex:0];
//            NSDictionary *emailInfo = [loadedArray objectAtIndex:0];
//            NSDictionary *usernameInfo = [loadedArray objectAtIndex:1];
//            self.email.text = [emailInfo objectForKey:@"email"];
//            self.username.text = [usernameInfo objectForKey:@"username"];
//            NSDicloadedArray[0];
//            self.username.text = profileData.username;
//            self.email.text = profileData.email;
        }
    }
    
    
}

-(void)setupUI
{
//    ProfileData *profileData = [self.loadedProfileData objectAtIndex:0];
////    self.telephoneNumber.text = profileData.telephoneNumber;
    self.username.text = @"jessicawu";
    self.email.text = @"jessicawu@yahoo.com";
    
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
