//
//  ImageViewController.m
//  UIimagePick-test
//
//  Created by Loovee on 2017/10/13.
//  Copyright © 2017年 AJ.com. All rights reserved.
//

#import "ImageViewController.h"

@interface ImageViewController ()

/**  */
@property (nonatomic, weak) UIImageView *imageView;

@end

@implementation ImageViewController

- (instancetype)init
{
    self = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"ImageViewController"];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    
    UIImageView *iv = [[UIImageView alloc] initWithImage:_image];
    iv.center = self.view.center;
    [self.view addSubview:iv];
    iv.userInteractionEnabled = YES;
    _imageView = iv;
    
    //pinch 手势
    UIPinchGestureRecognizer *pinch = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(pinchGestureDidPinch:)];
    [iv addGestureRecognizer:pinch];
    //pan
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGestureDidPan:)];
    [iv addGestureRecognizer:pan];
    
    
}

//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    [self dismissViewControllerAnimated:YES completion:nil];
//}

- (void)pinchGestureDidPinch:(UIPinchGestureRecognizer *)recognizer
{
    recognizer.view.transform = CGAffineTransformScale(recognizer.view.transform, recognizer.scale, recognizer.scale);
    recognizer.scale = 1; ;
}

- (void)panGestureDidPan:(UIPanGestureRecognizer *)recognizer
{
    CGPoint translation = [recognizer translationInView:self.view];
    recognizer.view.center = CGPointMake(recognizer.view.center.x + translation.x,recognizer.view.center.y + translation.y);
    [recognizer setTranslation:CGPointZero inView:self.view];
}

@end
