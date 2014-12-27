//
//  FluffDetailViewController.h
//  Fluffr
//
//  Created by Patrick Landreman on 12/26/14.
//  Copyright (c) 2014 Patrick Landreman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FluffDetailViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *fluffDetailImageView;
- (IBAction)backButtonPressed:(id)sender;
- (IBAction)deleteButtonPressed:(id)sender;
- (IBAction)sendButtonPressed:(id)sender;
- (IBAction)favoriteButtonPressed:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *favoriteButton;

@property UIImage *image;

@end
