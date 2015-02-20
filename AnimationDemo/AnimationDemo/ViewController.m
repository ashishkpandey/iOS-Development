//
//  ViewController.m
//  AnimationDemo
//
//  Created by Vinita Miranda on 2/20/15.
//  Copyright (c) 2015 Vinita Miranda. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic)IBOutlet UIImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self performSelector:@selector(addScaleAnsRotate) withObject:self afterDelay:2];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)changeAlpha
{
    [UIView animateWithDuration:3.0 animations:^{
        self.imageView.alpha = 0.0;
    }];
}

-(void)changeAlphaWithDelay
{
    [UIView animateWithDuration:3.0
                          delay: 2.0
                        options: UIViewAnimationOptionTransitionFlipFromLeft
                     animations:^{
                         self.imageView.alpha = 0.0;
                     }
                     completion:nil];
}

-(void)setScaleTransform
{
    self.imageView.transform = CGAffineTransformMakeScale(2, 2);

}

-(void)setRotateTransform
{
    self.imageView.transform = CGAffineTransformMakeRotation( 90 * M_PI  / 180);
}

-(void)addScaleAnsRotate
{
    CGAffineTransform scaleTrans =
    CGAffineTransformMakeScale(2, 2);
    CGAffineTransform rotateTrans =
    CGAffineTransformMakeRotation(90 * M_PI / 180);
    self.imageView.transform = CGAffineTransformConcat(scaleTrans, rotateTrans);
}

@end