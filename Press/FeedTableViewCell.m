//
//  FeedTableViewCell.m
//  Press
//
//  Created by Jessica Wu on 2/20/16.
//  Copyright © 2016 HackNYU. All rights reserved.
//

#import "FeedTableViewCell.h"
@interface FeedTableViewCell()
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *location;
@property (weak, nonatomic) IBOutlet UILabel *newsDescription;
@property (weak, nonatomic) IBOutlet UILabel *flagInfo;

@end

@implementation FeedTableViewCell
@synthesize title, newsDescription,location;

- (void)awakeFromNib {
    // Initialization code
}

- (void)loadWithData:(NewsData *)newsData
{
    self.title.text = newsData.title;
    self.location.text = newsData.location;
    self.newsDescription.text = newsData.newsDescription;
    self.flagInfo.text = @"5"; 
}

-(NSString *)getTitle:(FeedTableViewCell *)cell{
    NSLog(@"title: %@",cell.title.text);
    return cell.title.text;
}

-(NSString *)getLocation:(FeedTableViewCell *)cell{
    NSLog(@"title: %@",cell.location.text);
    return cell.location.text;
}

-(NSString *)getDescription:(FeedTableViewCell *)cell{
    NSLog(@"title: %@",cell.newsDescription.text);
    return cell.newsDescription.text;
}


//- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
//    [super setSelected:selected animated:animated];
//
//    // Configure the view for the selected state
//}


@end
