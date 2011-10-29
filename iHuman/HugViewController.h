//
//  HugViewController.h
//  iHuman
//
//  Created by Christopher Schepman on 10/28/11.
//  Copyright (c) 2011 ELC Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HugViewController : UIViewController {
    IBOutlet UIView *hugView;
    IBOutlet UILabel *countLabel;
    
    BOOL animationInProgress;
    
    IBOutlet UIImageView *flower1;
    IBOutlet UIImageView *flower2;
    IBOutlet UIImageView *flower3;
    IBOutlet UIImageView *flower4;
    IBOutlet UIImageView *flower5;
    IBOutlet UIImageView *flower6;
    IBOutlet UIImageView *flower7;
    IBOutlet UIImageView *flower8;
}

@property (nonatomic,retain) IBOutlet UIView* hugView;
@property (nonatomic,retain) IBOutlet UIView* countLabel;

@property (nonatomic, assign) BOOL animationInProgress;

@property (nonatomic,retain) IBOutlet UIImageView* flower1;
@property (nonatomic,retain) IBOutlet UIImageView* flower2;
@property (nonatomic,retain) IBOutlet UIImageView* flower3;
@property (nonatomic,retain) IBOutlet UIImageView* flower4;
@property (nonatomic,retain) IBOutlet UIImageView* flower5;
@property (nonatomic,retain) IBOutlet UIImageView* flower6;
@property (nonatomic,retain) IBOutlet UIImageView* flower7;
@property (nonatomic,retain) IBOutlet UIImageView* flower8;


- (void)stepOne;
- (void)stepTwo;
- (void)stepThree;
- (void)stepFour;
- (void)stepFive;


@end
