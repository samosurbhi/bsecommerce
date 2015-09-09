//
//  CategoryViewController.h
//  Minifm
//
//  Created by Samosys on 09/09/15.
//  Copyright (c) 2015 Samosys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CategoryViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray * categoryArray;
    NSIndexPath * lastIndexPath1;
}
- (IBAction)Cancel:(UIButton *)sender;
- (IBAction)ClearAll:(id)sender;
- (IBAction)Apply:(id)sender;


@end
