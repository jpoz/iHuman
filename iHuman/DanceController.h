//
//  DanceController.h
//  iHuman
//
//  Created by James Pozdena on 10/26/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DanceController : UIViewController {
    NSArray *kColor;
    int colorIndex;
    int colorTextIndex;
    float speed;
    NSDate *lastTime;
    IBOutlet UILabel *dance;
}

@property(nonatomic, retain) NSArray *kColor;
@property(nonatomic, retain) NSDate  *lastTime;
@property(nonatomic, retain) UILabel *dance;


- (void)animateIt;

@end
