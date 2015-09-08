//
//  SignUpViewController.h
//  Minifm
//
//  Created by Samosys on 07/09/15.
//  Copyright (c) 2015 Samosys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>
@interface SignUpViewController : UIViewController<UITextFieldDelegate,FBLoginViewDelegate,FBGraphPerson>{
    
    IBOutlet UIScrollView *scrollView;
    IBOutlet UITextField *firstName;
    IBOutlet UITextField *lastName;
    IBOutlet UITextField *emailAddress;
    IBOutlet UITextField *password;
    IBOutlet UITextField *confirmPassword;
}

@end
