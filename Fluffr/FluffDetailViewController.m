//
//  FluffDetailViewController.m
//  Fluffr
//
//  Created by Patrick Landreman on 12/26/14.
//  Copyright (c) 2014 Patrick Landreman. All rights reserved.
//

#import "FluffDetailViewController.h"

@interface FluffDetailViewController ()

@end

@implementation FluffDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [_fluffDetailImageView setImage:_image];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)backButtonPressed:(id)sender {
    NSLog(@"back pressed.");
    [self.navigationController popViewControllerAnimated:TRUE];
}

- (IBAction)deleteButtonPressed:(id)sender {
    NSLog(@"delete pressed.");
}

- (IBAction)sendButtonPressed:(id)sender {
    NSLog(@"send pressed.");
}

- (IBAction)favoriteButtonPressed:(id)sender {
    NSLog(@"favorite pressed.");
}
@end
