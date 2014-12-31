//
//  SideDrawerController.m
//  Fluffr
//
//  Created by Patrick Landreman on 12/28/14.
//  Copyright (c) 2014 Patrick Landreman. All rights reserved.
//

#import "SideDrawerController.h"
#import <UIViewController+MMDrawerController.h>
#import "BrowserCollectionViewController.h"
#import "InboxTableViewController.h"

#define BROWSE 0
#define FAVORITES 1
#define INBOX 2

@interface SideDrawerController ()

@property NSArray *pages;

@end

@implementation SideDrawerController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    _pages = @[@"Browse",@"Favorites",@"Inbox"];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [_pages count];
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([indexPath row] == BROWSE) {
        NSLog(@"Browse tapped.");
        
        BrowserCollectionViewController *browser = [[BrowserCollectionViewController alloc] init];
        [self.mm_drawerController setCenterViewController:browser];
        
    } else if ([indexPath row] == INBOX){
        NSLog(@"Inbox tapped.");
    } else if ([indexPath row] == FAVORITES){
        NSLog(@"Favorites tapped.");
    }
}

//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SideDrawerCell" forIndexPath:indexPath];
//    
//    // Configure the cell...
//    cell.textLabel.text = [_pages objectAtIndex:[indexPath row]];
//    cell.textLabel.textColor = [UIColor whiteColor];
//    
//    return cell;
//}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
