//
//  ScrollViewController.h
//  SvgImageSample
//
//  Created by CSS on 25/01/18.
//  Copyright © 2018 Appoets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScrollViewController : UIViewController<UIScrollViewDelegate>

@property (strong) IBOutlet UIScrollView *scrollView;

@property (strong) IBOutlet UIImageView *imageView;

@end
