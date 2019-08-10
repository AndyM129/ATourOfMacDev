//
//  ViewController.m
//  SimpleTimer
//
//  Created by 孟昕欣 on 2019/8/10.
//  Copyright © 2019 Andy Meng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak) IBOutlet NSTextField *timerLabel;
@property (weak) IBOutlet NSButton *startButton;
@property (weak) IBOutlet NSButton *stopButton;
@property (weak) IBOutlet NSButton *resetButton;
@property (strong) NSTimer *timer;
@property (assign) NSTimeInterval timeInterval;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (void)startTimer {
    self.startButton.enabled = NO;
    self.stopButton.enabled = YES;
    self.resetButton.enabled = NO;
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(didHandelTimer:) userInfo:nil repeats:YES];
}

- (void)stopTimer {
    self.startButton.enabled = YES;
    self.stopButton.enabled = NO;
    self.resetButton.enabled = YES;
    [self.timer invalidate];
}

- (void)resetTimer {
    self.startButton.enabled = YES;
    self.stopButton.enabled = NO;
    self.resetButton.enabled = NO;
    [self.timer invalidate];
    self.timeInterval = 0;
    [self updateTimerLabel];
}

- (void)didHandelTimer:(id)sender {
    self.timeInterval += self.timer.timeInterval;
    [self updateTimerLabel];
}

- (void)updateTimerLabel {
    [self.timerLabel setTitleWithMnemonic:[NSString stringWithFormat:@"%.2f", self.timeInterval]];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)didClickStartButton:(id)sender {
    [self startTimer];
}

- (IBAction)didClickStopButton:(id)sender {
    [self stopTimer];
}

- (IBAction)didClickResetButton:(id)sender {
    [self resetTimer];
}

@end
