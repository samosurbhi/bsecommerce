//
//  SellViewController.m
//  Minifm
//
//  Created by Samosys on 09/09/15.
//  Copyright (c) 2015 Samosys. All rights reserved.
//

#import "SellViewController.h"
#import "NVSlideMenuController.h"
#import "CategoryViewController.h"
@interface SellViewController ()

@end

@implementation SellViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.hidden=YES;
     [self.slide_Button addTarget:self.slideMenuController action:@selector(toggleMenuAnimated:) forControlEvents:UIControlEventTouchUpInside];
    if (self.view.frame.size.height==480) {
       scrollview.contentSize=CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+50);
    }
    else if (self.view.frame.size.height==568)
    {
        scrollview.contentSize=CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+50);
    }
    else
    {
    scrollview.contentSize=CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+85);
    }
    textno=1;
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

- (IBAction)Girls:(UIButton *)sender {
    [radioButton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
    [radioButton setBackgroundImage:[UIImage imageNamed:@"Boysunchecked02.png"] forState:UIControlStateNormal];
    [radioButton1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [radioButton1 setBackgroundImage:[UIImage imageNamed:@"girlchecked.png"] forState:UIControlStateNormal];
}

- (IBAction)Boys:(UIButton *)sender {
    [radioButton setBackgroundImage:[UIImage imageNamed:@"checked.png"] forState:UIControlStateNormal];
    [radioButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [radioButton1 setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
    [radioButton1 setBackgroundImage:[UIImage imageNamed:@"unchecked.png"] forState:UIControlStateNormal];

}
-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    if (self.view.frame.size.height==480)
        scrollview.contentSize=CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+300);
    else
        scrollview.contentSize=CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+200);
    if (textField==product_title) {
        star_Lable.hidden=YES;
    }
    else if (textField==price)
    {
       [scrollview setContentOffset:CGPointMake(0,280) animated:YES];
    }
    else if (textField==youMakePrice)
    {
        [scrollview setContentOffset:CGPointMake(0,350) animated:YES];
    }
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (self.view.frame.size.height==480) {
        scrollview.contentSize=CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+50);
    }
    else if (self.view.frame.size.height==568)
    {
        scrollview.contentSize=CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+50);
    }
    else
    {
        scrollview.contentSize=CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+85);
    }

    [textField resignFirstResponder];
    return YES;
}
#pragma mark - Text view deligates
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    textno=textView.text.length;
    textLenth.text=[NSString stringWithFormat:@"%d/200",textno];
    if (textno==200) {
         [textView resignFirstResponder];
        return NO;
    }
    if([text isEqualToString:@"\n"]) {
        
        if (self.view.frame.size.height==480) {
            scrollview.contentSize=CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+50);
        }
        else if (self.view.frame.size.height==568)
        {
            scrollview.contentSize=CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+50);
        }
        else
        {
            scrollview.contentSize=CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+85);
        }

        [textView resignFirstResponder];
        return NO;
    }

    
//    [textView resignFirstResponder];
    return YES;
    
}
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView
{
    
    [scrollview setContentOffset:CGPointMake(0,250) animated:YES];
    return YES;
}

- (IBAction)AddPhoto:(UIButton *)sender {
}

- (IBAction)Category:(id)sender {
    UIStoryboard * storyBoardWithoutAuto =[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    CategoryViewController *category =[storyBoardWithoutAuto instantiateViewControllerWithIdentifier:@"CategoryViewController"];
    [self.navigationController pushViewController:category animated:YES];
}

- (IBAction)Brand:(UIButton *)sender {
}

- (IBAction)Size:(UIButton *)sender {
}
@end
