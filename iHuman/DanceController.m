    //
//  DanceController.m
//  iHuman
//
//  Created by James Pozdena on 10/26/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "DanceController.h"

@implementation DanceController

@synthesize kColor;
@synthesize dance;
@synthesize lastTime;

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

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    if (colorIndex > kColor.count - 1) {
        colorIndex = 0;
    }
    if (colorTextIndex > kColor.count - 1) {
        colorTextIndex = 0;
    }
    
    [self.view setBackgroundColor:[kColor objectAtIndex:colorIndex]];
    [self.dance setTextColor:[kColor objectAtIndex:colorTextIndex]];

    ++colorIndex;
    ++colorTextIndex;

    NSDate *previousTime = [self.lastTime retain];
    
    self.lastTime = [NSDate date];
    
    NSLog(@"%@ %@", previousTime, self.lastTime);
    
    NSTimeInterval diff = [self.lastTime timeIntervalSinceDate:previousTime];
    
    if (diff < 3) {
        speed = diff;
    }
    
    [previousTime release];
    
}


#pragma mark - View lifecycle

- (void)viewDidLoad
{
    
    [super viewDidLoad];

    self.kColor = [NSArray arrayWithObjects:[UIColor blueColor], [UIColor greenColor], [UIColor redColor], [UIColor yellowColor], [UIColor purpleColor], nil];

    colorIndex = 0;
    colorTextIndex = 1;
    speed = 0.5;

    [self animateIt];
    
}

- (void)animateIt
{
    if (colorIndex > kColor.count - 1) {
        colorIndex = 0;
    }
    if (colorTextIndex > kColor.count - 1) {
        colorTextIndex = 0;
    }
        
    [self.view setBackgroundColor:[kColor objectAtIndex:colorIndex]];
    [self.dance setTextColor:[kColor objectAtIndex:colorTextIndex]];
    
    
    
    [self.dance setCenter:CGPointMake( (200+(arc4random()%500)), (100+(arc4random()%840)))];
    
    [NSTimer scheduledTimerWithTimeInterval:speed
                                     target:self
                                   selector:@selector(animateIt)
                                   userInfo:nil
                                    repeats:NO];

    ++colorIndex;
    ++colorTextIndex;
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
