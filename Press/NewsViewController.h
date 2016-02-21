//
//  NewsViewController.h
//  test
//
//  Created by Shiny Croospulle on 2/20/16.
//  Copyright © 2016 ShinyCroospulle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewsViewController : UIViewController <UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *newsTitle;
@property (weak, nonatomic) IBOutlet UIImageView *newsImage;
@property (weak, nonatomic) IBOutlet UITextView *newsContent;

@end
