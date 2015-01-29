//
//  ViewController.m
//  SKStatusBarHUD
//
//  Created by King on 15/1/29.
//  Copyright (c) 2015年 king. All rights reserved.
//

#import "ViewController.h"
#import "SKStatusBarHUB.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [SKStatusBarHUB showSuccess:@"success~~"];
//    [SKStatusBarHUB showError:@"error~~~"];

}

@end
