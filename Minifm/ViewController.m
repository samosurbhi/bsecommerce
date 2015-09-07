//
//  ViewController.m
//  Minifm
//
//  Created by Samosys on 07/09/15.
//  Copyright (c) 2015 Samosys. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)SignInWithFacebook:(UIButton *)sender {
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
                      NSLog(@"FB user first name:%@",user.first_name);
                      NSLog(@"FB user last name:%@",user.last_name);
                      NSLog(@"FB user birthday:%@",user.birthday);
                      NSLog(@"FB user location:%@",user.location);
                      NSLog(@"FB user username:%@",user.username);
                      NSLog(@"FB user gender:%@",[user objectForKey:@"gender"]);
                       NSLog(@"email id:%@",[user objectForKey:@"email"]);
                      NSLog(@"location:%@", [NSString stringWithFormat:@"Location: %@\n\n",user.location[@"name"]]);
//                      userimage = [NSString stringWithFormat:@"https://graph.facebook.com/%@/picture?type=large", [user objectID]];
//                      //fbpic=[NSURL URLWithString:userimage];
//                      //chatimage=[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:userImage]]];
//                      //NSLog(@"%@",chatimage);
//                      useremail = [user objectForKey:@"email"];
//                      NSLog(@"%@",useremail);
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
}
- (IBAction)SignUpCreateAccount:(UIButton *)sender {
}

@end
