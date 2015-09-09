//
//  ProductListingDetailViewController.h
//  Minifm
//
//  Created by innobitz on 09/09/15.
//  Copyright (c) 2015 Samosys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductListingDetailViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIView *view_userInfo;
@property (strong, nonatomic) IBOutlet UIImageView *img_user;
@property (strong, nonatomic) IBOutlet UILabel *lbl_userName;
@property (strong, nonatomic) IBOutlet UILabel *lbl_date;
@property (strong, nonatomic) IBOutlet UIImageView *img_product;
@property (strong, nonatomic) IBOutlet UIView *view_productNameandPrice;
@property (strong, nonatomic) IBOutlet UILabel *lbl_productName;
@property (strong, nonatomic) IBOutlet UILabel *lbl_productPrice;
@property (strong, nonatomic) IBOutlet UIView *view_availability;
@property (strong, nonatomic) IBOutlet UILabel *lbl_availability;
@property (strong, nonatomic) IBOutlet UILabel *lbl_stockOrOut;
@property (strong, nonatomic) IBOutlet UIView *view_productDetail;
@property (strong, nonatomic) IBOutlet UILabel *lbl_brand;
@property (strong, nonatomic) IBOutlet UILabel *lbl_brandName;
@property (strong, nonatomic) IBOutlet UILabel *lbl_size;
@property (strong, nonatomic) IBOutlet UILabel *lbl_sizeTypes;
@property (strong, nonatomic) IBOutlet UILabel *lbl_productDetail;
@property (strong, nonatomic) IBOutlet UIView *view_likes;

@property (strong, nonatomic) IBOutlet UIButton *btn_likes;
@property (strong, nonatomic) IBOutlet UILabel *lbl_likeUserNames;
@property (strong, nonatomic) IBOutlet UIView *view_commentCount;
@property (strong, nonatomic) IBOutlet UIButton *btn_commentCount;

@property (strong, nonatomic) IBOutlet UILabel *lbl_commentCount;
@property (strong, nonatomic) IBOutlet UIView *view_likeCount
;
@property (strong, nonatomic) IBOutlet UIButton *btn_likeCount;

@property (strong, nonatomic) IBOutlet UILabel *lbl_likeCount;
@property (strong, nonatomic) IBOutlet UIView *view_share;
@property (strong, nonatomic) IBOutlet UIButton *btn_share;

@property (strong, nonatomic) IBOutlet UIButton *btn_addToCard;
- (IBAction)Action_AddToCard:(id)sender;
- (IBAction)Action_likes:(id)sender;
- (IBAction)Action_commentCount:(id)sender;

- (IBAction)Action_likeCount:(id)sender;

- (IBAction)Action_share:(id)sender;

@end
