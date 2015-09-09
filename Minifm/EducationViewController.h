//
//  EducationViewController.h
//  Minifm
//
//  Created by Samosys on 09/09/15.
//  Copyright (c) 2015 Samosys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EducationViewController : UIViewController{
    
    IBOutlet UIScrollView *scrollView;
    IBOutlet UIImageView *imageView;
    IBOutlet UIButton *LetMeIn;
    IBOutlet UIPageControl *pageControl;
    
}
- (IBAction)Finish:(UIButton *)sender;

@end
