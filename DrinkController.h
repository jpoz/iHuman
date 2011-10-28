//
//  DrinkController.h
//  iHuman
//
//  Created by James Pozdena on 10/28/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DrinkController : UIViewController <UIAccelerometerDelegate>
{
    IBOutlet UIImageView *beerBottle;
}


@property (nonatomic, retain) UIImageView *beerBottle;

@end
