//
//  HugViewController.m
//  iHuman
//
//  Created by Christopher Schepman on 10/28/11.
//  Copyright (c) 2011 ELC Technologies. All rights reserved.
//

#import "HugViewController.h"
#import <QuartzCore/QuartzCore.h>

@implementation HugViewController

@synthesize hugView, countLabel, flower1, flower2, flower3, flower4, flower5, flower6, flower7, flower8, animationInProgress;


- (void)stepOne
{
    self.animationInProgress = YES;
    [self.hugView setAlpha:0.0];
    [self.countLabel setText:@"3"];
    [self.countLabel setAlpha:1.0];

    
    [NSTimer scheduledTimerWithTimeInterval:1.0
                                     target:self
                                   selector:@selector(stepTwo)
                                   userInfo:nil
                                    repeats:NO];

    
}


- (void)stepTwo
{
    [self.countLabel setText:@"2"];
    
    [NSTimer scheduledTimerWithTimeInterval:1.0
                                     target:self
                                   selector:@selector(stepThree)
                                   userInfo:nil
                                    repeats:NO];
    
    
}


- (void)stepThree
{
    [self.countLabel setText:@"1"];
    
    [NSTimer scheduledTimerWithTimeInterval:1.0
                                     target:self
                                   selector:@selector(stepFour)
                                   userInfo:nil
                                    repeats:NO];
    
    
}


- (void)stepFour
{
    [self.countLabel setAlpha:0.0];
    [self.hugView setAlpha:1.0];

    [self spin:self.flower1];
    [self spin:self.flower2];
    [self spin:self.flower3];
    [self spin:self.flower4];
    [self spin:self.flower5];
    [self spin:self.flower6];
    [self spin:self.flower7];
    [self spin:self.flower8];


    [NSTimer scheduledTimerWithTimeInterval:5.0
                                     target:self
                                   selector:@selector(stepFive)
                                   userInfo:nil
                                    repeats:NO];
    

}

-(void)stepFive
{
    self.animationInProgress = NO;
    [self spinBack:self.flower1];
    [self spinBack:self.flower2];
    [self spinBack:self.flower3];
    [self spinBack:self.flower4];
    [self spinBack:self.flower5];
    [self spinBack:self.flower6];
    [self spinBack:self.flower7];
    [self spinBack:self.flower8];

}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if (!self.animationInProgress) {
        [self stepOne];
    }
}

-(void)spin:(UIView *)aView
{
    [UIView animateWithDuration:5.0 animations:^{
       CGAffineTransform transform = CGAffineTransformMakeRotation(-3.14159);
        
        aView.transform = transform;
    }];
}


-(void)spinBack:(UIView *)aView
{
        CGAffineTransform transform = CGAffineTransformMakeRotation(3.14159);
        aView.transform = transform;
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
    
    [self stepOne];
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
