//
//  SignUpViewController.m
//  Minifm
//
//  Created by Samosys on 07/09/15.
//  Copyright (c) 2015 Samosys. All rights reserved.
//

#import "SignUpViewController.h"
#import "AppDelegate.h"
@interface SignUpViewController ()

@end

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (self.view.frame.size.height==480) {
        scrollView.contentSize=CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+200);
    }
    else {
        scrollView.contentSize=CGSizeMake(self.view.frame.size.width, self.view.frame.size.height);
    }
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    if (self.view.frame.size.height==480)
        scrollView.contentSize=CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+300);
    else
        scrollView.contentSize=CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+200);
    
    if (textField==firstName) {
        [scrollView setContentOffset:CGPointMake(0,50) animated:YES];

    }
    else if (textField==lastName) {
        [scrollView setContentOffset:CGPointMake(0,100) animated:YES];
        
    }
    else if (textField==emailAddress) {
        [scrollView setContentOffset:CGPointMake(0,150) animated:YES];
        
    }
    else if (textField==password) {
        [scrollView setContentOffset:CGPointMake(0,200) animated:YES];
        
    }
    else if (textField==confirmPassword) {
        [scrollView setContentOffset:CGPointMake(0,250) animated:YES];
        
    }
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (self.view.frame.size.height==480) {
        scrollView.contentSize=CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+50);
    }
    else
        {
        scrollView.contentSize=CGSizeMake(self.view.frame.size.width, self.view.frame.size.height-50);
    }
    [textField resignFirstResponder];
    return YES;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)loginwithFacebokk:(id)sender {
    AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
    //public_profile
    appDelegate.session = [[FBSession alloc] initWithPermissions:@[@"public_profile,email"]];
    [FBSession setActiveSession:appDelegate.session];
    
    [appDelegate.session openWithBehavior:FBSessionLoginBehaviorWithFallbackToWebView
                        completionHandler:^(FBSession *session,
                                            FBSessionState status,
                                            NSError *error)
     {
         if (FBSession.activeSession.isOpen)
         {
             [[FBRequest requestForMe] startWithCompletionHandler:
              ^(FBRequestConnection *connection, NSDictionary<FBGraphUser> *user, NSError *error)
              {
                  if (!error)
                  {
                      NSLog(@"accesstoken %@",[NSString stringWithFormat:@"%@",appDelegate.session.accessTokenData]);
                      NSLog(@"FB user first name:%@",user.name);
                      //                      NSLog(@"FB user last name:%@",user.last_name);
                      //                      NSLog(@"FB user birthday:%@",user.birthday);
                      //                      NSLog(@"FB user location:%@",user.location);
                      //                      NSLog(@"FB user username:%@",user.username);
                      //                      NSLog(@"FB user gender:%@",[user objectForKey:@"gender"]);
                      NSLog(@"email id:%@",[user objectForKey:@"email"]);
                      NSLog(@"location:%@", [NSString stringWithFormat:@"Location: %@\n\n",user.location[@"name"]]);
                      NSString *userimage = [NSString stringWithFormat:@"https://graph.facebook.com/%@/picture?type=large", [user objectID]];
                      //  NSURL*    fbpic=[NSURL URLWithString:userimage];
                      UIImage*  chatimage=[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:userimage]]];
                      NSLog(@"%@",chatimage);
                      NSString *useremail = [user objectForKey:@"email"];
                      NSLog(@"%@",useremail);
                       [self.navigationController popViewControllerAnimated:YES];
                      //
                      //                      //username = user.first_name;
                      //                      //usergender = [user objectForKey:@"gender"];
                      //
                      //
                      //                      fname=user.first_name;
                      //                      lname=user.last_name;
                      //
                      //                      api_obj=[[APIViewController alloc]init];
                      //                      [api_obj facebooklogin :@selector(fblogincheckresult:) tempTarget:self  :useremail :device_Token];
                      //                      HUD=[MBProgressHUD showHUDAddedTo:self.view animated:YES];
                      //                      HUD.labelText=@"Please wait...";
                  }
                  else
                  {
                      UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"" message:@"Server Error, Please try again later" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                      [alert show];
                  }
              }];
         }
     }];

}
- (IBAction)FinishSignUp:(id)sender {
     [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)back:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
