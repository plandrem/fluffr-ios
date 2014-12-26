//
//  BrowserCell.h
//  Fluffr
//
//  Created by Patrick Landreman on 12/24/14.
//  Copyright (c) 2014 Patrick Landreman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Fluff.h"

@interface BrowserCell : UICollectionViewCell
@property (strong, nonatomic) IBOutlet UILabel *title;
@property (strong, nonatomic) IBOutlet UIImageView *fluffImage;

- (void) setImageFromFluff:(Fluff *)fluff;

@end
