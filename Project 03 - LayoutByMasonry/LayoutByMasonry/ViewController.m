//
//  ViewController.m
//  LayoutByMasonry
//
//  Created by 孟昕欣 on 2019/8/10.
//  Copyright © 2019 Andy Meng. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>

@interface ViewController ()
@property(nonatomic, strong, nullable) NSTextField *textField;
@end

@implementation ViewController

#pragma mark - Life Circle

- (void)dealloc {
    
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        self.title = @"";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.wantsLayer = YES;
    self.view.layer.backgroundColor = [NSColor colorWithWhite:.3 alpha:1].CGColor;
    self.textField.stringValue = @"Hello World !";
}

- (void)viewWillAppear {
    [super viewWillAppear];
}

- (void)viewDidAppear {
    [super viewDidAppear];
}

- (void)viewWillDisappear {
    [super viewWillDisappear];
}

- (void)viewDidDisappear {
    [super viewDidDisappear];
}

#pragma mark - Properties

- (NSTextField *)textField {
    if (!_textField) {
        _textField = [[NSTextField alloc]init];
        _textField.font = [NSFont boldSystemFontOfSize:20];
        _textField.editable = NO;
        _textField.bordered = NO;
        _textField.backgroundColor = [NSColor colorWithWhite:1 alpha:0.2];
        _textField.textColor = [NSColor textColor];
        _textField.alignment = NSTextAlignmentCenter;
        _textField.maximumNumberOfLines = 1;
        [self.view addSubview:_textField];
        [_textField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_lessThanOrEqualTo(self.view);
            make.centerX.mas_equalTo(self.view);
            make.centerY.mas_equalTo(self.view).offset(-50);
        }];
    }
    return _textField;
}

#pragma mark - Data & Networking

#pragma mark - Layout Subviews

#pragma mark - Public Methods

#pragma mark - Private Methods

#pragma mark - Notifications

#pragma mark - KVO

#pragma mark - Delegate

#pragma mark - Override

#pragma mark - Helper Methods



@end
