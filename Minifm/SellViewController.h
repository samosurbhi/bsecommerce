//
//  SellViewController.h
//  Minifm
//
//  Created by Samosys on 09/09/15.
//  Copyright (c) 2015 Samosys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SellViewController : UIViewController<UITextFieldDelegate,UITextViewDelegate>
{
    IBOutlet UIScrollView *scrollview;
    IBOutlet UIButton *radioButton;
    IBOutlet UIButton *radioButton1;
    
    IBOutlet UITextView *descriptionTextview
    ;
    IBOutlet UITextField *price;
    IBOutlet UITextField *youMakePrice;
    IBOutlet UITextField *product_title;
    
    IBOutlet UILabel *star_Lable;
    IBOutlet UILabel *textLenth;
    int textno;
}
@property (strong, nonatomic) IBOutlet UIButton *slide_Button;
- (IBAction)Girls:(UIButton *)sender;
- (IBAction)Boys:(UIButton *)sender;
- (IBAction)AddPhoto:(UIButton *)sender;
- (IBAction)Category:(id)sender;
- (IBAction)Brand:(UIButton *)sender;
- (IBAction)Size:(UIButton *)sender;




@end
