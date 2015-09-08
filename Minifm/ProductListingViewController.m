//
//  ProductListingViewController.m
//  Minifm
//
//  Created by innobitz on 07/09/15.
//  Copyright (c) 2015 Samosys. All rights reserved.
//

#import "ProductListingViewController.h"

@interface ProductListingViewController ()
{
    ProductListingTableViewCell *cell;
}

@end

@implementation ProductListingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    self.txt_search.background = [UIImage imageNamed:@"search_input.png"];
    self.txt_search.layer.cornerRadius = 15;
    //Hello check changes
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
    {
        return 550;
    }
    else
    {
        return 320;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifir =@"Cell";
    tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifir];
    // cell =nil;
    if (cell == nil)
    {
        cell = [[ProductListingTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifir];
    }
    cell.img_userImage.layer.cornerRadius = cell.img_userImage.frame.size.height/2;
    cell.img_userImage.layer.masksToBounds = YES;
    cell.img_userImage.image = [UIImage imageNamed:@"skater.jpg"];
    
    cell.img_addIcon.layer.cornerRadius = cell.img_addIcon.frame.size.height/2;
    cell.img_addIcon.layer.masksToBounds = YES;
    cell.img_addIcon.image = [UIImage imageNamed:@"cart_add_icon.png"];
    
    cell.img_likes.layer.borderColor = [UIColor darkGrayColor].CGColor;
    cell.img_likes.layer.borderWidth = 2.0;
    cell.img_comments.layer.borderColor = [UIColor darkGrayColor].CGColor;
    cell.img_comments.layer.borderWidth = 2.0;
    cell.img_share.layer.borderColor = [UIColor darkGrayColor].CGColor;
    cell.img_share.layer.borderWidth = 2.0;
    
    cell.btn_addToCart.layer.cornerRadius = cell.btn_addToCart.frame.size.height/2;
    cell.btn_addToCart.layer.masksToBounds = YES;
    [cell.btn_addToCart setBackgroundImage:[UIImage imageNamed:@"cart_icon.png"] forState:UIControlStateNormal];
    
    [cell.btn_like setBackgroundImage:[UIImage imageNamed:@"fav_icon.png"] forState:UIControlStateNormal];
    [cell.btn_comment setBackgroundImage:[UIImage imageNamed:@"message_icon.png"] forState:UIControlStateNormal];
    [cell.btn_share setBackgroundImage:[UIImage imageNamed:@"share_icon.png"] forState:UIControlStateNormal];
    
    cell.lbl_likeCount.text = @"5";
    cell.lbl_comment.text = @"5";

    cell.Img_productImage.image = [UIImage imageNamed:@"skater.jpg"];
    cell.lbl_userName.text = @"Vikram Gupta";
    cell.lbl_productReleaseDate.text = @"07 Sep 2015";
    cell.lbl_productName.text = @"Dummy Product";
    cell.lbl_productPrice.text = @"€10";
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

@end
