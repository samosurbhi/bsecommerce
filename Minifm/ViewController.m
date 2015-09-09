//
//  ViewController.m
//  Minifm
//
//  Created by Samosys on 07/09/15.
//  Copyright (c) 2015 Samosys. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "LoginViewController.h"
#import "SignUpViewController.h"

@interface ViewController ()
{

    AppDelegate *appDelegate;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBar.hidden=YES;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)SignInWithFacebook:(UIButton *)sender {
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
- (IBAction)LoginWithEmailAccount:(UIButton *)sender {
   // self.navigationController.navigationBar.hidden=NO;
    UIStoryboard * storyBoardWithoutAuto =[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    LoginViewController *Login =[storyBoardWithoutAuto instantiateViewControllerWithIdentifier:@"LoginViewController"];
    [self.navigationController pushViewController:Login animated:YES];
}
- (IBAction)SignUpCreateAccount:(UIButton *)sender {
 //   self.navigationController.navigationBar.hidden=NO;
    UIStoryboard * storyBoardWithoutAuto =[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    SignUpViewController *sign =[storyBoardWithoutAuto instantiateViewControllerWithIdentifier:@"SignUpViewController"];
    [self.navigationController pushViewController:sign animated:YES];

}

@end
