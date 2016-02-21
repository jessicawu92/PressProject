//
//  User.h
//  Press
//
//  Created by Jessica Wu on 2/21/16.
//  Copyright © 2016 HackNYU. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (weak, nonatomic) NSString *firstName;
@property (weak, nonatomic) NSString *lastName;
@property (weak, nonatomic) NSString *email;
@property (weak, nonatomic) NSString *phoneNumber;
@property (weak, nonatomic) NSString *password;
@property (weak, nonatomic) NSString *username;
@property (weak, nonatomic) NSString *confirmPassword;

@end
