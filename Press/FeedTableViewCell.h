//
//  FeedTableViewCell.h
//  Press
//
//  Created by Jessica Wu on 2/20/16.
//  Copyright © 2016 HackNYU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewsData.h"

@interface FeedTableViewCell : UITableViewCell
- (void)loadWithData:(NewsData *)newsData;
-(NSString *)getTitle:(FeedTableViewCell *)cell;
-(NSString *)getLocation:(FeedTableViewCell *)cell;
-(NSString *)getDescription:(FeedTableViewCell *)cell;

@end
