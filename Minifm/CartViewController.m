//
//  CartViewController.m
//  Minifm
//
//  Created by innobitz on 09/09/15.
//  Copyright (c) 2015 Samosys. All rights reserved.
//

#import "CartViewController.h"

@interface CartViewController ()
{
    CartTableViewCell *cell;
}

@end

@implementation CartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
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
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifir =@"Cell";
    tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifir];
    // cell =nil;
    if (cell == nil)
    {
        cell = [[CartTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifir];
    }
    cell.img_product.layer.cornerRadius = cell.img_product.frame.size.height/2;
    cell.img_product.layer.masksToBounds = YES;
    cell.img_product.image = [UIImage imageNamed:@"skater.jpg"];
    
    
    cell.btn_close.layer.cornerRadius = cell.btn_close.frame.size.height/2;
    cell.btn_close.layer.masksToBounds = YES;
    [cell.btn_close setBackgroundImage:[UIImage imageNamed:@"close_icon.png"] forState:UIControlStateNormal];
    
    
    
        return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}


- (IBAction)Action_menu:(id)sender {
}

- (IBAction)Action_Checkout:(id)sender {
}
@end
