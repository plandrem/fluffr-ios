//
//  DrawerHelper.m
//  Fluffr
//
//  Created by Patrick Landreman on 12/30/14.
//  Copyright (c) 2014 Patrick Landreman. All rights reserved.
//

#import "DrawerHelper.h"
#import <MMDrawerBarButtonItem.h>
#import <MMDrawerController.h>
#import <UIViewController+MMDrawerController.h>

@interface DrawerHelper ()

//@property UIViewController *controller;

@end

@implementation DrawerHelper

static UIViewController *mController;

+ (void)setupLeftMenuButton: (UIViewController *)controller {
    
    mController = controller;
    
    MMDrawerBarButtonItem * leftDrawerButton = [[MMDrawerBarButtonItem alloc] initWithTarget:self action:@selector(leftDrawerButtonPress:) ];
    [leftDrawerButton setImage:[UIImage imageNamed:@"fluffr_cat_icon-01"]];
    [controller.navigationItem setLeftBarButtonItem:leftDrawerButton];
}

- (void)leftDrawerButtonPress:(id)leftDrawerButtonPress {
    [mController.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
}


@end
