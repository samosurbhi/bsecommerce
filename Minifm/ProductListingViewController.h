//
//  ProductListingViewController.h
//  Minifm
//
//  Created by innobitz on 07/09/15.
//  Copyright (c) 2015 Samosys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProductListingTableViewCell.h"

@interface ProductListingViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITextField *txt_search;

@property (strong, nonatomic) IBOutlet UITableView *tbl_products;
@end
