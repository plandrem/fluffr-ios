//
//  BrowserCollectionViewController.h
//  Fluffr
//
//  Created by Patrick Landreman on 12/24/14.
//  Copyright (c) 2014 Patrick Landreman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BrowserCollectionViewController : UICollectionViewController <UICollectionViewDataSource, UICollectionViewDelegate>

@property NSMutableArray *initialFluffsArray;

@end
