//
//  SlideViewController.m
//  Minifm
//
//  Created by Samosys on 07/09/15.
//  Copyright (c) 2015 Samosys. All rights reserved.
//

#import "SlideViewController.h"
#import "NVSlideMenuController.h"
@interface SlideViewController ()

@end

@implementation SlideViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    names=[[NSMutableArray alloc]initWithObjects:@"You",@"BUY",@"SELL",@"CART",@"SETTING", nil];
    // Do any additional setup after loading the view from its nib.
}
-(void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBar.hidden=YES;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark Table View Delegates
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    
    return 1;
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
   return names.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CELL"];
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
    //cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    //  cell.selectionStyle = UITableViewCellSelectionStyleGray;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
//    
//    UIImageView *img1=[[UIImageView alloc]initWithFrame:CGRectMake(28, 12, 18, 20)];
//    img1.image=[UIImage imageNamed:images[indexPath.row]];
//    [cell addSubview:img1];
    
    
    UIFont * myFont = [UIFont fontWithName:@"SegoeUI-Light" size:15];
    CGRect labelFrame = CGRectMake (60, 13, 200, 20);
    UILabel *label = [[UILabel alloc] initWithFrame:labelFrame];
    [label setFont:myFont];
    label.lineBreakMode=NSLineBreakByWordWrapping;
    label.numberOfLines=5;
    label.textColor=[UIColor colorWithRed:199/255.0 green:210/255.0 blue:223/255.0 alpha:1.0];;
    //label.backgroundColor=[UIColor clearColor];
    [label setText:names[indexPath.row]];
    [cell addSubview:label];
    cell.backgroundColor=[UIColor clearColor];
    
    //cell.textLabel.text=names[indexPath.row];
    cell.tag=indexPath.row;
    //        CGRect frame =cell.frame;
    //        UIImageView *cellima =[[UIImageView alloc]initWithFrame:frame];
    //        cellima.image=[UIImage imageNamed:@"menu_list_bg.png"];
    //        cellima.alpha=0.5;
    //        [cell addSubview:cellima];
    //        [cell bringSubviewToFront:cellima];
    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
