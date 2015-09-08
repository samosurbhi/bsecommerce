//
//  LoginViewController.m
//  Minifm
//
//  Created by Samosys on 07/09/15.
//  Copyright (c) 2015 Samosys. All rights reserved.
//

#import "LoginViewController.h"
#import "SignUpViewController.h"
#import <FacebookSDK/FacebookSDK.h>
#import "NVSlideMenuController.h"
#import "slideViewController.h"
//#import "ProductListingViewController.h"
@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated
{
//    self.navigationController.navigationBar.barTintColor = [UIColor clearColor];
//    self.navigationController.navigationBar.tintColor = [UIColor clearColor];
//    self.navigationController.navigationBar.translucent = YES;
    welcome_Message.text= [NSString stringWithFormat:@"Welcome Back !\n  Login to your Minifm account."];
    welcome_Message.textAlignment=NSTextAlignmentCenter;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    if (textField==username) {
        if (self.view.frame.size.height==480) {
            [UIView beginAnimations:@"animate" context:nil];
            [UIView setAnimationDuration:0.35f];
            [UIView setAnimationBeginsFromCurrentState: NO];
            self.view.frame = CGRectMake(self.view.frame.origin.x, -50 , self.view.frame.size.width, self.view.frame.size.height);
            [UIView commitAnimations];
        }
    }
    if (textField==password) {
        if (self.view.frame.size.height==480) {
            [UIView beginAnimations:@"animate" context:nil];
            [UIView setAnimationDuration:0.35f];
            [UIView setAnimationBeginsFromCurrentState: NO];
            self.view.frame = CGRectMake(self.view.frame.origin.x, -100 , self.view.frame.size.width, self.view.frame.size.height);
            [UIView commitAnimations];
        }
    }
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [UIView beginAnimations:@"animate" context:nil];
    [UIView setAnimationDuration:0.35f];
    [UIView setAnimationBeginsFromCurrentState: NO];
    self.view.frame = CGRectMake(self.view.frame.origin.x, 0 , self.view.frame.size.width, self.view.frame.size.height);
    [UIView commitAnimations];
    [textField resignFirstResponder];
    return YES;
}
- (IBAction)Login:(id)sender {
    /*self.navigationController.navigationBar.hidden=YES;
    SlideViewController *svc;
    ProductListingViewController *plvc;
      UIStoryboard * storyBoardWithoutAuto =[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    svc=[[SlideViewController alloc]initWithNibName:@"SlideViewController" bundle:nil];
    plvc=[storyBoardWithoutAuto instantiateViewControllerWithIdentifier:@"ProductListingViewController"];;
    
    UINavigationController *nax2=[[UINavigationController alloc]initWithRootViewController:plvc];
    UINavigationController *nav1=[[UINavigationController alloc]initWithRootViewController:svc];
    NVSlideMenuController *slideMenuVC = [[NVSlideMenuController alloc] initWithMenuViewController:nav1 andContentViewController:nax2];
    
    [self.navigationController pushViewController:slideMenuVC animated:YES];
*/
}
- (IBAction)ForgotMyPassword:(id)sender {
}
- (IBAction)CreateAnAccount:(id)sender {
   // self.navigationController.navigationBar.hidden=NO;
    UIStoryboard * storyBoardWithoutAuto =[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    SignUpViewController *sign =[storyBoardWithoutAuto instantiateViewControllerWithIdentifier:@"SignUpViewController"];
    [self.navigationController pushViewController:sign animated:YES];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)Back:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
  }

@end
