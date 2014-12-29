//
//  SplashScreenViewController.m
//  Fluffr
//
//  Created by Patrick Landreman on 12/24/14.
//  Copyright (c) 2014 Patrick Landreman. All rights reserved.
//

#import "SplashScreenViewController.h"
#import <Parse/Parse.h>
#import "Fluff.h"
#import "BrowserCollectionViewController.h"
#import "SideDrawerController.h"
#import <MMDrawerController.h>

@interface SplashScreenViewController ()

@end

@implementation SplashScreenViewController

static NSMutableArray *initialFluffs;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    NSLog(@"Starting Up...");
    
    NSLog(@"Logging in...");
    PFUser *user = [PFUser logInWithUsername:@"+16518155005" password:@"password"];
    
    // get some initial fluff data
    NSLog(@"Pulling initial fluffs...");
    
    PFQuery *query = [PFQuery queryWithClassName:@"fluff"];
    [query addDescendingOrder:@"createdAt"];
    query.limit = 20;
    
    //TODO - remove this line
    [self performSegueWithIdentifier:@"SplashOnFinishLoading" sender:self];
    
//    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
//        if (!error) {
//            NSLog(@"query complete.");
//            
//            initialFluffs = [[NSMutableArray alloc] init];
//            for (PFObject *obj in objects) {
//                [initialFluffs addObject:[Fluff getNewFromObject:obj]];
//            }
//            [self performSegueWithIdentifier:@"SplashOnFinishLoading" sender:self];
//            
//        } else {
//            NSLog(@"Error: %@ %@", error, [error userInfo]);
//        }
//    }];
    
    
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    MMDrawerController *drawerController = [segue destinationViewController];
    
    BrowserCollectionViewController *browser = [self.storyboard instantiateViewControllerWithIdentifier:@"BROWSE_VIEW_CONTROLLER"];
    browser.initialFluffsArray = initialFluffs;
    
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:browser];
    
    SideDrawerController *sideDrawer = [self.storyboard instantiateViewControllerWithIdentifier:    @"SIDE_DRAWER_CONTROLLER"];

    
    [drawerController setCenterViewController:navController];
    [drawerController setLeftDrawerViewController:sideDrawer];
    [drawerController setMaximumLeftDrawerWidth:200.0];
}

@end
