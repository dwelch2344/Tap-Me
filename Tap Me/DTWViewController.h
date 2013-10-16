//
//  DTWViewController.h
//  Tap Me
//
//  Created by Dave Welch on 10/15/13.
//  Copyright (c) 2013 David Welch. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DTWViewController : UIViewController<UIAlertViewDelegate>

@property IBOutlet UILabel *scoreLabel;
@property IBOutlet UILabel *timerLabel;

@property NSInteger count;
@property NSInteger seconds;
@property NSTimer *timer;

- (IBAction)buttonPressed;

@end
