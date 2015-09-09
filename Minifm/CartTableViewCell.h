//
//  CartTableViewCell.h
//  Minifm
//
//  Created by innobitz on 09/09/15.
//  Copyright (c) 2015 Samosys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CartTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIButton *btn_close;
@property (strong, nonatomic) IBOutlet UIImageView *img_product;
@property (strong, nonatomic) IBOutlet UILabel *lbl_ProductName;
@property (strong, nonatomic) IBOutlet UILabel *lbl_productPrice;
@property (strong, nonatomic) IBOutlet UIButton *btn_Remove;
@property (strong, nonatomic) IBOutlet UIView *View_IncrementDecrement;
@property (strong, nonatomic) IBOutlet UIButton *btn_Subtract;
@property (strong, nonatomic) IBOutlet UILabel *lbl_ProductCount;
@property (strong, nonatomic) IBOutlet UIButton *btn_AddItem;
@property (strong, nonatomic) IBOutlet UILabel *lbl_subtotal;
@property (strong, nonatomic) IBOutlet UILabel *lbl_subtotalPrice;

- (IBAction)Action_Close:(id)sender;
- (IBAction)Action_Remove:(id)sender;
- (IBAction)Action_Subtract:(id)sender;
- (IBAction)Action_AddItem:(id)sender;
@end
