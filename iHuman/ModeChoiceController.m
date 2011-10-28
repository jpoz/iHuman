//
//  ModeChoiceController.m
//  iHuman
//
//  Created by James Pozdena on 10/26/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ModeChoiceController.h"
#import "DanceController.h"
#import "DrinkController.h"


@implementation ModeChoiceController

-(IBAction)dance:(id)sender
{
    DanceController* controllerToPush = [[DanceController alloc]init];
    [self.navigationController pushViewController:controllerToPush animated:YES];
    
    NSLog(@"Dance");
    
    [controllerToPush release];
}

-(IBAction)drink:(id)sender
{
    DrinkController* controllerToPush = [[DrinkController alloc]init];
    [self.navigationController pushViewController:controllerToPush animated:YES];
    
    NSLog(@"Drink");
    
    [controllerToPush release];
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
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"background.png"]]];

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
