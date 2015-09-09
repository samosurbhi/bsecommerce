//
//  CartViewController.h
//  Minifm
//
//  Created by innobitz on 09/09/15.
//  Copyright (c) 2015 Samosys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "CartTableViewCell.h"

@interface CartViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tbl_cartProduct;

@property (strong, nonatomic) IBOutlet UIView *View_OrderSummary;
@property (strong, nonatomic) IBOutlet UILabel *lbl_OrderSummary;

@property (strong, nonatomic) IBOutlet UIView *View_Item;
@property (strong, nonatomic) IBOutlet UILabel *lbl_itemCount;
@property (strong, nonatomic) IBOutlet UILabel *lbl_itemPrice;
@property (strong, nonatomic) IBOutlet UIView *View_shipping;
@property (strong, nonatomic) IBOutlet UILabel *lbl_shipping;
@property (strong, nonatomic) IBOutlet UILabel *lbl_shippingType;
@property (strong, nonatomic) IBOutlet UIView *View_OrderTotal;
@property (strong, nonatomic) IBOutlet UILabel *lbl_OrderTotal;
@property (strong, nonatomic) IBOutlet UILabel *lbl_OrderTotalPrice;
@property (strong, nonatomic) IBOutlet UIButton *btn_Checkout;

- (IBAction)Action_menu:(id)sender;
- (IBAction)Action_Checkout:(id)sender;
@end
