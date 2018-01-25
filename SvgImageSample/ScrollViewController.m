//
//  ScrollViewController.m
//  SvgImageSample
//
//  Created by CSS on 25/01/18.
//  Copyright © 2018 Appoets. All rights reserved.
//

#import "ScrollViewController.h"

@interface ScrollViewController ()

@end

@implementation ScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _scrollView.delegate = self;
}



- (void)scrollViewDidScroll:(UIScrollView*)scrollView{
    
    // this is just a demo method on how to compute the scale factor based on the current contentOffset
    float scale = 1.0f + fabs(scrollView.contentOffset.y)  / scrollView.frame.size.height;
    
    //Cap the scaling between zero and 1
    scale = MAX(0.0f, scale);
    
    // Set the scale to the imageView
    _imageView.transform = CGAffineTransformMakeScale(scale, scale);
    
    //CGAffineTransformMakeRotation(scale*360);
}


@end
