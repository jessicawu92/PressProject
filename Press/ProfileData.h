//
//  ProfileData.h
//  test
//
//  Created by Shiny Croospulle on 2/20/16.
//  Copyright © 2016 ShinyCroospulle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ProfileData : NSObject

@property (nonatomic, readwrite) int telephoneNumber;
@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) NSString *email;
- (void)loadWithDictionary:(NSDictionary *) dict;

@end
