//
//  ViewController.m
//  HelloWorld
//
//  Created by 孟昕欣 on 2019/8/10.
//  Copyright © 2019 Andy Meng. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)didClickSayHelloButton:(id)sender {
    NSAlert *alert = [[NSAlert alloc]init]; // 定义alert变量
    [alert addButtonWithTitle:@"Ok"];       // 添加Ok按钮
    alert.messageText = @"ATourOfMacDev";    //弹窗内容
    alert.informativeText = @"Hello World !";   //描述性文字
    [alert beginSheetModalForWindow:self.view.window completionHandler:^(NSModalResponse returnCode){
        if(returnCode == NSAlertFirstButtonReturn){
            NSLog(@"this is OK Button tap");
        }
    }];
}

@end
