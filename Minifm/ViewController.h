//
//  ViewController.h
//  Minifm
//
//  Created by Samosys on 07/09/15.
//  Copyright (c) 2015 Samosys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>
#import "AppDelegate.h"

@interface ViewController : UIViewController<FBLoginViewDelegate>
@property (nonatomic, strong) AppDelegate *appDelegate;

@end

