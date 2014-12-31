//
//  InboxCell.h
//  Fluffr
//
//  Created by Patrick Landreman on 12/29/14.
//  Copyright (c) 2014 Patrick Landreman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InboxCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *fluffImage;
@property (strong, nonatomic) IBOutlet UIImageView *senderImage;
@property (strong, nonatomic) IBOutlet UILabel *senderLabel;
@property (strong, nonatomic) IBOutlet UILabel *dateLabel;

@end
