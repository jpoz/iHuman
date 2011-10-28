//
//  DrinkController.m
//  iHuman
//
//  Created by James Pozdena on 10/28/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "DrinkController.h"
#import <QuartzCore/QuartzCore.h>


@implementation DrinkController

@synthesize beerBottle;

- (void)accelerometer:(UIAccelerometer *)accelerometer
        didAccelerate:(UIAcceleration *)acceleration
{
    double const kThreshold = 2.0;
    if (   fabsf(acceleration.x) > kThreshold
        || fabsf(acceleration.y) > kThreshold
        || fabsf(acceleration.z) > kThreshold) {
        NSLog(@"Hey, stop shaking me!");
        

        

    }
    
//    CAKeyframeAnimation *theAnimation = [CAKeyframeAnimation animation];
//    theAnimation.values = [NSArray arrayWithObjects:
//                           [NSValue valueWithCATransform3D:CATransform3DMakeRotation(0, 0,0,1)],
//                           [NSValue valueWithCATransform3D:CATransform3DMakeRotation(acceleration.y, 0,0,1)],
//                           [NSValue valueWithCATransform3D:CATransform3DMakeRotation(6.26, 0,0,1)],
//                           nil];
//    theAnimation.cumulative = YES;
//    theAnimation.duration = 2.0;
//    theAnimation.repeatCount = 1;
//    theAnimation.removedOnCompletion = YES;
//    
////    if(aMode == i7Rotate360TimingModeEaseInEaseOut) {
//        theAnimation.timingFunctions = [NSArray arrayWithObjects:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn], 
//                                        [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut],
//                                        nil
//                                        ];
////    }
//    [self.beerBottle.layer addAnimation:theAnimation forKey:@"transform"];
    
    
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    CAKeyframeAnimation *theAnimation = [CAKeyframeAnimation animation];
    theAnimation.values = [NSArray arrayWithObjects:
                           [NSValue valueWithCATransform3D:CATransform3DMakeRotation(0, 0,0,1)],
                           [NSValue valueWithCATransform3D:CATransform3DMakeRotation(2.0, 0,0,1)],
                           [NSValue valueWithCATransform3D:CATransform3DMakeRotation(2.0, 0,0,1)],
                           [NSValue valueWithCATransform3D:CATransform3DMakeRotation(2.0, 0,0,1)],
                           [NSValue valueWithCATransform3D:CATransform3DMakeRotation(2.0, 0,0,1)],
                           [NSValue valueWithCATransform3D:CATransform3DMakeRotation(2.0, 0,0,1)],
                           [NSValue valueWithCATransform3D:CATransform3DMakeRotation(2.0, 0,0,1)],
                           [NSValue valueWithCATransform3D:CATransform3DMakeRotation(2.0, 0,0,1)],
                           [NSValue valueWithCATransform3D:CATransform3DMakeRotation(2.0, 0,0,1)],
                           [NSValue valueWithCATransform3D:CATransform3DMakeRotation(0, 0,0,1)],
                           nil];
    theAnimation.cumulative = YES;
    theAnimation.duration = 2.0;
    theAnimation.repeatCount = 1;
    theAnimation.removedOnCompletion = YES;
    
//    if(aMode == i7Rotate360TimingModeEaseInEaseOut) {
        theAnimation.timingFunctions = [NSArray arrayWithObjects:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn], 
                                        [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut],
                                        nil
                                        ];
//    }
    [self.beerBottle.layer addAnimation:theAnimation forKey:@"transform"];
}

- (void)startAccelerometer {
    UIAccelerometer *accelerometer = [UIAccelerometer sharedAccelerometer];
    accelerometer.delegate = self;
    accelerometer.updateInterval = 0.25;
}

- (void)stopAccelerometer {
    UIAccelerometer *accelerometer = [UIAccelerometer sharedAccelerometer];
    accelerometer.delegate = nil;
}

- (void)viewDidAppear:(BOOL)animated {
    [self startAccelerometer];
}

- (void)viewWillDisappear:(BOOL)animated {
    [self stopAccelerometer];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

@end
