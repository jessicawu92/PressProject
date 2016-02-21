//
//  ProfileData.m
//  test
//
//  Created by Shiny Croospulle on 2/20/16.
//  Copyright © 2016 ShinyCroospulle. All rights reserved.
//

#import "ProfileData.h"

@implementation ProfileData

- (void)loadWithDictionary:(NSDictionary *) dict{
    self.telephoneNumber = [[dict objectForKey:@"telephoneNumber"] intValue];
    self.username = [dict objectForKey:@"username"];
    self.email = [dict objectForKey:@"email"];
    
}

@end
