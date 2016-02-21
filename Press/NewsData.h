//
//  NewsData.h
//  Press
//
//  Created by Jessica Wu on 2/20/16.
//  Copyright © 2016 HackNYU. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NewsData : NSObject

@property (nonatomic, readwrite) int news_id;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *location;
@property (nonatomic, strong) NSString * newsDescription;
- (void)loadWithDictionary:(NSDictionary *)dict;

@end
