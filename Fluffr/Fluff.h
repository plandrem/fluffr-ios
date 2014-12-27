//
//  Fluff.h
//  Fluffr
//
//  Created by Patrick Landreman on 12/26/14.
//  Copyright (c) 2014 Patrick Landreman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface Fluff : NSObject 

@property NSString *title;
@property NSString *objectId;
@property NSString *sender;
@property long sendDate;
@property NSURL *imageUrl;
@property UIImage *image;

+ (Fluff *) getNewFromObject:(PFObject *)object;
+ (Fluff *) getNewFromId:(NSString *)objectId;

@end
