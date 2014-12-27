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
    
//    PFQuery *query = [PFQuery queryWithClassName:@"fluff"];
//    [query whereKey:@"title" equalTo:fluff.title];
//    [query getFirstObjectInBackgroundWithBlock:^(PFObject *object, NSError *error) {
//        if (!error) {
//            PFFile *imageFile = object[@"image"];
//            [imageFile getDataInBackgroundWithBlock:^(NSData *data, NSError *error) {
//                if (!error) {
//                    _fluffImage.image = [UIImage imageWithData:data];
//                    
//                } else {
//                    NSLog(@"Error: %@ %@", error, [error userInfo]);
//                }
//                
//            }];
//            
//        } else {
//            NSLog(@"Error: %@ %@", error, [error userInfo]);
//        }
//
//    }];
//
    [_fluffImage sd_setImageWithURL: fluff.imageUrl];
}


@end
