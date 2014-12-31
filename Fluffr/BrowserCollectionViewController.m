//
//  BrowserCollectionViewController.m
//  Fluffr
//
//  Created by Patrick Landreman on 12/24/14.
//  Copyright (c) 2014 Patrick Landreman. All rights reserved.
//

#import "BrowserCollectionViewController.h"
#import "FluffDetailViewController.h"
#import "BrowserCell.h"
#import "Fluff.h"
#import <MMDrawerBarButtonItem.h>
#import <UIViewController+MMDrawerController.h>

@interface BrowserCollectionViewController ()

@property Fluff *selectedFluff;
@property UIImage *imageToShow;

@end

@implementation BrowserCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self setupLeftMenuButton];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Do any additional setup after loading the view.
//    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
//    [flowLayout setItemSize:CGSizeMake(200, 200)];
//    [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
    
//    [self.collectionView setCollectionViewLayout:flowLayout];
    
    NSLog(@"Browser Loaded with %lu fluffs.", (unsigned long)[_initialFluffsArray count]);
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

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [_initialFluffsArray count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
     BrowserCell *cell = (BrowserCell *) [collectionView dequeueReusableCellWithReuseIdentifier:@"BrowserCell" forIndexPath:indexPath];
    
    if (!cell) {
        NSLog(@"poop.");
    }

    int row = [indexPath row];
    
    // Configure the cell
    Fluff *f = [_initialFluffsArray objectAtIndex:row];
    cell.title.text = f.title;
    [cell setImageFromFluff:f];
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    _selectedFluff = [_initialFluffsArray objectAtIndex:[indexPath row]];
    NSLog(@"Selected Item: %@",_selectedFluff.title);
    
    BrowserCell *cell = (BrowserCell *) [collectionView cellForItemAtIndexPath:indexPath];
    
    _imageToShow = [cell.fluffImage image];

    
    [self performSegueWithIdentifier:@"FluffSelectedSegue" sender:@"fluff"];
}

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

#pragma mark Segue

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"FluffSelectedSegue"]) {
        NSLog(@"sender was 'fluff'");
        
        FluffDetailViewController *vc = [segue destinationViewController];
        
        if (!_imageToShow) {
            NSLog(@"no image to show.");
        }
        
        vc.image = _imageToShow;
//        [vc.fluffDetailImageView ]
    }

}

#pragma mark Nav Drawer

- (void)setupLeftMenuButton {
    MMDrawerBarButtonItem * leftDrawerButton = [[MMDrawerBarButtonItem alloc] initWithTarget:self action:@selector(leftDrawerButtonPress:)];
    [leftDrawerButton setImage:[UIImage imageNamed:@"fluffr_cat_icon-01"]];
    [self.navigationItem setLeftBarButtonItem:leftDrawerButton];
}

- (void)leftDrawerButtonPress:(id)leftDrawerButtonPress {
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
}


@end
