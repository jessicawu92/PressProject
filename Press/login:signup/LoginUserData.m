//
//  LoginUserData.m
//  openingScreen
//
//  Created by Niela Sultana on 2/20/16.
//  Copyright © 2016 Niela Sultana. All rights reserved.
//

#import "LoginUserData.h"

@implementation LoginUserData

//@property (nonatomic, readwrite) int user_info;
//
//@property (nonatomic, strong) NSString *uid;
//
//@property (nonatomic, strong) NSString *pw;
//
-(void) loadWithDictionary: (NSDictionary *)dict{
    self.pw = [dict objectForKey:@"password"];
}

@end

