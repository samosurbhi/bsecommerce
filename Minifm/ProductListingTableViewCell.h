//
//  ProductListingTableViewCell.h
//  Minifm
//
//  Created by innobitz on 07/09/15.
//  Copyright (c) 2015 Samosys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductListingTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIImageView *img_userImage;
@property (strong, nonatomic) IBOutlet UILabel *lbl_userName;
@property (strong, nonatomic) IBOutlet UILabel *lbl_productReleaseDate;
@property (strong, nonatomic) IBOutlet UIImageView *Img_productImage;
@property (strong, nonatomic) IBOutlet UILabel *lbl_productName;
@property (strong, nonatomic) IBOutlet UILabel *lbl_productPrice;
@property (strong, nonatomic) IBOutlet UIButton *btn_addToCart;
@property (strong, nonatomic) IBOutlet UIImageView *img_likes;
@property (strong, nonatomic) IBOutlet UIImageView *img_comments;

@property (strong, nonatomic) IBOutlet UIImageView *img_share;
@property (strong, nonatomic) IBOutlet UIImageView *img_addIcon;
@property (strong, nonatomic) IBOutlet UIButton *btn_like;
@property (strong, nonatomic) IBOutlet UILabel *lbl_likeCount;
@property (strong, nonatomic) IBOutlet UIButton *btn_comment;
@property (strong, nonatomic) IBOutlet UILabel *lbl_comment;
@property (strong, nonatomic) IBOutlet UIButton *btn_share;

- (IBAction)Action_AddToCard:(id)sender;

- (IBAction)Action_Like:(id)sender;
- (IBAction)Action_Comment:(id)sender;
- (IBAction)Action_Share:(id)sender;

@end
