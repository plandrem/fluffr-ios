//
//  Fluff.m
//  Fluffr
//
//  Created by Patrick Landreman on 12/26/14.
//  Copyright (c) 2014 Patrick Landreman. All rights reserved.
//

#import "Fluff.h"
#import <Parse/Parse.h>

@interface Fluff ()

@end


@implementation Fluff

+ (Fluff *) getNewFromId:(NSString *)objectId {
    PFObject *obj = [PFQuery getObjectOfClass:@"fluff" objectId:objectId];
    
    return [Fluff getNewFromObject:obj];

}

+ (Fluff *) getNewFromObject:(PFObject *)object {
    
    Fluff *f = [[Fluff alloc] init];
    
    f.title = object[@"title"];
    f.objectId = object[@"objectId"];
    
    //    PFFile *imageFile = obj[@"image"];
    //    f.image = [UIImage imageWithData:[imageFile getData]];
    
    return f;
    
}

@end