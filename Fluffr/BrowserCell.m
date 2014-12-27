//
//  BrowserCell.m
//  Fluffr
//
//  Created by Patrick Landreman on 12/24/14.
//  Copyright (c) 2014 Patrick Landreman. All rights reserved.
//

#import "BrowserCell.h"
#import "Fluff.h"
#import <Parse/Parse.h>
#import <SDWebImage/UIImageView+WebCache.h>

@implementation BrowserCell

- (void)awakeFromNib {
    // Initialization code
}

- (void) setImageFromFluff:(Fluff *)fluff {
    
    [_fluffImage sd_setImageWithURL: fluff.imageUrl];
}


@end
