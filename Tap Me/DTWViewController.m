//
//  DTWViewController.m
//  Tap Me
//
//  Created by Dave Welch on 10/15/13.
//  Copyright (c) 2013 David Welch. All rights reserved.
//

#import "DTWViewController.h"

@interface DTWViewController ()

@end

@implementation DTWViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    [self setupGame];
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}

- (IBAction)buttonPressed {
    NSLog(@"Pressed!");

    
    self.count++;
    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", self.count];
}


- (void)setupGame {
    self.seconds = 30;
    self.count = 0;
    
    self.timerLabel.text = [NSString stringWithFormat:@"Time: %i", self.seconds];
    self.scoreLabel.text = [NSString stringWithFormat:@"Score\n%i", self.count];
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0f
                                             target:self
                                           selector:@selector(subtractTime)
                                           userInfo:nil
                                            repeats:YES];
}

- (void)subtractTime {
    self.seconds--;
    self.timerLabel.text = [NSString stringWithFormat:@"Time: %i", self.seconds];
    
    if (self.seconds == 0) {
        [self.timer invalidate];
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Time is up!"
                                                        message:[NSString stringWithFormat:@"You scored %i points", self.count]
                                                       delegate:self
                                              cancelButtonTitle:@"Play Again"
                                              otherButtonTitles:nil];
        
        [alert show];
    }
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    [self setupGame];
    NSLog(@"Clicked alert");
}

@end
