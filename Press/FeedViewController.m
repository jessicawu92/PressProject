//
//  FeedViewController.m
//  Press
//
//  Created by Jessica Wu on 2/20/16.
//  Copyright © 2016 HackNYU. All rights reserved.
//

#import "FeedViewController.h"
#import "FeedTableViewCell.h"
#import "NewsData.h"
#import "postingview.h"
#import "testViewController.h"
#import "NewsViewController.h"

@interface FeedViewController ()
@property (nonatomic, strong) NSMutableArray *loadedNewsData;
@property (weak, nonatomic) IBOutlet UITableView *tableview;


@end

@implementation FeedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupTopNav];
    self.loadedNewsData = [[NSMutableArray alloc] init];
    [self loadJSONData];
    self.tableview.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setupTopNav
{
    self.title = @"News";
    UIButton* addpost = [UIButton buttonWithType:UIButtonTypeSystem];
    [addpost setImage:[UIImage imageNamed:@"addPost.png"] forState:UIControlStateNormal];
    addpost.frame = CGRectMake(350, 20, 40.0, 40.0);
    [addpost addTarget:self
               action:@selector(addPostAction)
     forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithCustomView:addpost];
    self.navigationItem.rightBarButtonItem = rightButton;
    self.navigationController.navigationItem.rightBarButtonItem = rightButton;
    
    
    UIButton *viewProfile = [UIButton buttonWithType:UIButtonTypeCustom];
    [viewProfile setImage:[UIImage imageNamed:@"profileIcon.png"] forState:UIControlStateNormal];
    viewProfile.frame = CGRectMake(300, 20, 45.0, 40.0);
    [viewProfile addTarget:self
                action:@selector(profileButtonPress)
      forControlEvents:UIControlEventTouchUpInside];
    
    [self.navigationController.view addSubview:viewProfile];
    
   
//    [self.navigationItem setRightBarButtonItems:[NSArray arrayWithObjects:addpost, viewProfile, nil]];
}

- (void)loadJSONData
{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"newsData" ofType:@"json"];
    
    NSError *error = nil;
    
    NSData *rawData = [NSData dataWithContentsOfFile:filePath options:NSDataReadingMappedIfSafe error:&error];
    
    id JSONData = [NSJSONSerialization JSONObjectWithData:rawData options:NSJSONReadingAllowFragments error:&error];
    
    [self.loadedNewsData removeAllObjects];
    if ([JSONData isKindOfClass:[NSDictionary class]])
    {
        NSDictionary *jsonDict = (NSDictionary *)JSONData;
        
        NSArray *loadedArray = [jsonDict objectForKey:@"testing"];
        if ([loadedArray isKindOfClass:[NSArray class]])
        {
            for (NSDictionary *newDict in loadedArray)
            {
                NewsData *newsData = [[NewsData alloc] init];
                [newsData loadWithDictionary:newDict];
                [self.loadedNewsData addObject:newsData];
            }
        }
    }
    
    [self.tableview reloadData];
}

-(void)addPostAction
{
    postingview *postVC = [[postingview alloc] init];
    [self.navigationController pushViewController:postVC animated:YES];
}

-(void) profileButtonPress
{
//    ProfileViewController *profileVC = [[ProfileViewController alloc]init];
//    [self.navigationController pushViewController:profileVC animated:YES];
    testViewController *profileVC = [[testViewController alloc] init];
    [self.navigationController pushViewController:profileVC animated:YES];
}

-(void) loadFeed
{
    NSString *post = [NSString stringWithFormat:@"userID=%@&locationX=%f&locationY=%f", @"1", 10.0, 25.0];
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:NO];
    NSString *postLength = [NSString stringWithFormat:@"%lu", (unsigned long)[post length]];
    NSString *url = [NSString stringWithFormat:@"172.16.27.159:80/getNews.php?user_id=%d&location_x=%f&location_y=%f", 1, 10.0, 25.0];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc]initWithURL:[NSURL URLWithString:url]];
    [request setHTTPMethod:@"POST"];
    [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
    [request setHTTPBody:postData];
//    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
//    if ( connection ){
////                responseData = [[NSMutableData alloc] init];
//    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NewsViewController *newsVC = [[NewsViewController alloc] init];
    FeedTableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    [newsVC view];
    newsVC.newsTitle.text = [cell getTitle:cell];
    newsVC.newsContent.text = [cell getDescription:cell];
    [self.navigationController pushViewController:newsVC animated:NO];
    NSLog(@" news view controller: %@ %@ ", newsVC.newsTitle.text, newsVC.newsContent.text);
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"FeedTableViewCell";
    FeedTableViewCell *cell = nil;
    
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:cellIdentifier owner:self options:nil];
        cell = (FeedTableViewCell *)[nib objectAtIndex:0];
    }
    
    NewsData *newsData = [self.loadedNewsData objectAtIndex:[indexPath row]];
    
    [cell loadWithData:newsData];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"array count: %lu", (unsigned long)[self.loadedNewsData count]);
    return [self.loadedNewsData count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 121.0;
}

//#pragma mark NSURLConnection Delegate Methods

//- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
//    [responseData appendData:data];
//}
//
//- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
//    NSTimeInterval timeEnd = [[NSDate date] timeIntervalSince1970];
//    float apiCallTimeTook = (timeEnd - self.timeStart) * 1000;
//    NSString *apiCallMessage = [NSString stringWithFormat:@"\nThe api call took %f ms.", apiCallTimeTook];
//    
//    NSError* error;
//    NSDictionary *jsonData = [NSJSONSerialization JSONObjectWithData:responseData options:kNilOptions error:&error];    if (jsonData != nil){
//        NSString *message = [jsonData[@"message"] stringByAppendingString:apiCallMessage];
//        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:jsonData[@"code"] message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
//        
//        if ( [jsonData[@"code"] isEqualToString:@"Success"] ){
//            alertView.delegate = self;
//        }
//        
//        [alertView show];
//    } else {
//        [[[UIAlertView alloc] initWithTitle:@"Parse Error!" message:@"Error parsing json" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
//    }
//}



@end


//@end
