//
//  SlideViewController.m
//  Minifm
//
//  Created by Samosys on 07/09/15.
//  Copyright (c) 2015 Samosys. All rights reserved.
//

#import "SlideViewController.h"
#import "NVSlideMenuController.h"
#import "ProductListingViewController.h"
#import "SellViewController.h"
@interface SlideViewController ()

@end

@implementation SlideViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    names=[[NSMutableArray alloc]initWithObjects:@"You",@"BUY",@"SELL",@"CART",@"SETTING", nil];
     images=[[NSMutableArray alloc]initWithObjects:@"Meuser_logo_icon.png",@"Mebuy_icon.png",@"Mesell_icon.png",@"Mecart_icon.png",@"Mesetting_icon.png", nil];
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
    UIImageView *img1;
    if (indexPath.row==0)
        img1=[[UIImageView alloc]initWithFrame:CGRectMake(55, 5, 60, 60)];
    else
        img1=[[UIImageView alloc]initWithFrame:CGRectMake(65, 40, 40, 30)];
    img1.image=[UIImage imageNamed:images[indexPath.row]];
    [cell addSubview:img1];
    
    
    UIFont * myFont = [UIFont fontWithName:@"SegoeUI-Light" size:15];
    CGRect labelFrame;
    if (indexPath.row==0)
         labelFrame = CGRectMake (60, 70, 50, 20);
    else
         labelFrame = CGRectMake (50, 8, 70, 30);;
    UILabel *label = [[UILabel alloc] initWithFrame:labelFrame];
    [label setFont:myFont];
    label.lineBreakMode=NSLineBreakByWordWrapping;
    label.numberOfLines=1;
    label.textAlignment=NSTextAlignmentCenter;
    label.textColor=[UIColor whiteColor];
    //label.backgroundColor=[UIColor clearColor];
    [label setText:names[indexPath.row]];
    [cell addSubview:label];
    cell.backgroundColor=[UIColor clearColor];
    
    //cell.textLabel.text=names[indexPath.row];
    cell.tag=indexPath.row;
//            CGRect frame =cell.frame;
//            UIImageView *cellima =[[UIImageView alloc]initWithFrame:frame];
//            cellima.image=[UIImage imageNamed:@"menu_list_bg.png"];
//            cellima.alpha=0.5;
//            [cell addSubview:cellima];
//            [cell bringSubviewToFront:cellima];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row==1) {
        ProductListingViewController *plvc;
        UIStoryboard * storyBoardWithoutAuto =[UIStoryboard storyboardWithName:@"Main" bundle:nil];
        plvc=[storyBoardWithoutAuto instantiateViewControllerWithIdentifier:@"ProductListingViewController"];;
        UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:plvc];
        [self.slideMenuController closeMenuBehindContentViewController:navController animated:YES completion:nil];
    }
    if (indexPath.row==2) {
        SellViewController *Svc;
        UIStoryboard * storyBoardWithoutAuto =[UIStoryboard storyboardWithName:@"Main" bundle:nil];
        Svc=[storyBoardWithoutAuto instantiateViewControllerWithIdentifier:@"SellViewController"];;
        UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:Svc];
        [self.slideMenuController closeMenuBehindContentViewController:navController animated:YES completion:nil];
    }
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
