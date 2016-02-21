//
//  NewsData.m
//  Press
//
//  Created by Jessica Wu on 2/20/16.
//  Copyright © 2016 HackNYU. All rights reserved.
//

#import "NewsData.h"

@implementation NewsData
- (void)loadWithDictionary:(NSDictionary *)dict{
    self.news_id = [[dict objectForKey:@"news_id"] intValue];
    self.title = [dict objectForKey:@"title"];
    self.location = [dict objectForKey:@"location"];
    self.newsDescription = [dict objectForKey:@"newsDescription"];
}

@end
