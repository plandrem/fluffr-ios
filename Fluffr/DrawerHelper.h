//
//  DrawerHelper.h
//  Fluffr
//
//  Created by Patrick Landreman on 12/30/14.
//  Copyright (c) 2014 Patrick Landreman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DrawerHelper : NSObject

@property (nonatomic, strong) UINavigationController *browserNavController;
@property (nonatomic, strong) UINavigationController *inboxNavController;

+ (void)setupLeftMenuButton: (UIViewController *)controller;

@end
