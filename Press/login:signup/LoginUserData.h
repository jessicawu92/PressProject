//
//  LoginUserData.h
//  openingScreen
//
//  Created by Niela Sultana on 2/20/16.
//  Copyright © 2016 Niela Sultana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LoginUserData : NSObject

@property (nonatomic, readwrite) int user_info;

//@property (nonatomic, strong) NSString *uid;

@property (nonatomic, strong) NSString *pw;

-(void) loadWithDictionary: (NSDictionary *)dict;

@end
