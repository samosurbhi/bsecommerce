//
//  CategoryViewController.m
//  Minifm
//
//  Created by Samosys on 09/09/15.
//  Copyright (c) 2015 Samosys. All rights reserved.
//

#import "CategoryViewController.h"

@interface CategoryViewController ()

@end

@implementation CategoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    categoryArray =[[NSMutableArray alloc]initWithObjects:@"Girls Clothing",@"Childs Play",@"Baby Clothing",@"Boys Clothing",@"Other", nil];
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
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
        return categoryArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
     tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if(cell == nil )
    {
        cell =[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier] ;
    }
    
   [[UITableViewCell appearance] setTintColor:[UIColor whiteColor]];
    
        if ([indexPath compare:lastIndexPath1] == NSOrderedSame)
        {
            cell.accessoryType = UITableViewCellAccessoryCheckmark;
            cell.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"filter_list_bg_selected.png"]];
            cell.textColor=[UIColor whiteColor];
            
        }
        else
        {
            cell.accessoryType = UITableViewCellAccessoryNone;
           cell.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"filter_list_bg.png"]];
             cell.textColor=[UIColor grayColor];

        }
    
        cell.textLabel.text=[categoryArray objectAtIndex:indexPath.row];
    
    
    
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    lastIndexPath1=indexPath;
    [tableView reloadData];
}

- (IBAction)Cancel:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)ClearAll:(id)sender {
     [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)Apply:(id)sender {
     [self.navigationController popViewControllerAnimated:YES];
}
@end
