//
//  EducationViewController.m
//  Minifm
//
//  Created by Samosys on 09/09/15.
//  Copyright (c) 2015 Samosys. All rights reserved.
//

#import "EducationViewController.h"
#import "ViewController.h"
@interface EducationViewController ()
{
    NSMutableArray *color;
}

@end

@implementation EducationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.hidden=YES;
    color =[[NSMutableArray alloc]initWithObjects:@"education_1.png",@"education_2.png",@"education_3.png", nil];
    
    CGRect frame=scrollView.frame;
    frame.size.width=scrollView.frame.size.width * color.count;
    scrollView.contentSize=CGSizeMake(frame.size.width, scrollView.frame.size.height);
    //  NSLog(@"2.....%f",self.imageScrollView.frame.size.width);
    for (int i = 0; i < color.count; i++)
    {
        CGRect frame;
        frame.origin.x = scrollView.frame.size.width * i;
        frame.origin.y = 0;
        frame.size = scrollView.frame.size;
        
        UIImageView *subview = [[UIImageView alloc] initWithFrame:frame];
        subview.contentMode=UIViewContentModeScaleAspectFill ;
        
//        NSURL *url=[NSURL URLWithString:[[color objectAtIndex:i]objectForKey:@"images"]];
//        NSData *data = [NSData dataWithContentsOfURL:url];
        
        UIImage *image = [UIImage imageNamed:[color objectAtIndex:i]];
        subview.image = image;
        [scrollView addSubview:subview];
        [scrollView sendSubviewToBack:subview];
    }

    pageControl.numberOfPages=color.count;
    [NSTimer scheduledTimerWithTimeInterval:2.5 target:self selector:@selector(scrollingTimer) userInfo:nil repeats:YES];
   
    
}

-(void)scrollingTimer
{
    CGFloat contentOffset = scrollView.contentOffset.x;
    // NSLog(@"%f",self.scrollView.contentOffset.x);
    int nextPage = (int)(contentOffset/scrollView.frame.size.width)+1;
    
    if (nextPage==2) {
        [LetMeIn setTitle:@"FINISH" forState:UIControlStateNormal];
    }
    else
    {
        [LetMeIn setTitle:@"LET ME IN" forState:UIControlStateNormal];
    }
    if( nextPage!=color.count)
    {
        [scrollView scrollRectToVisible:CGRectMake(nextPage*scrollView.frame.size.width, 0, scrollView.frame.size.width, scrollView.frame.size.height) animated:YES];
        pageControl.currentPage=nextPage;
    }
    else
    {
       
        [scrollView setContentOffset:CGPointMake(0,0) animated:NO];
        pageControl.currentPage=0;
        nextPage=0;
    }
    
}    // Do any additional setup after loading the view.
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

- (IBAction)Finish:(UIButton *)sender {
    // self.navigationController.navigationBar.hidden=NO;
    UIStoryboard * storyBoardWithoutAuto =[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    ViewController *Login =[storyBoardWithoutAuto instantiateViewControllerWithIdentifier:@"ViewController"];
    [self.navigationController pushViewController:Login animated:YES];

}
@end
