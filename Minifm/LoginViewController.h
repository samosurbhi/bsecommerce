//
//  LoginViewController.h
//  Minifm
//
//  Created by Samosys on 07/09/15.
//  Copyright (c) 2015 Samosys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>
@interface LoginViewController : UIViewController<UITextFieldDelegate,FBLoginViewDelegate>
{
    IBOutlet UILabel *welcome_Message;
    
    IBOutlet UIButton *create_Account;
    IBOutlet UITextField *username;
    IBOutlet UITextField *password;
}

@end
