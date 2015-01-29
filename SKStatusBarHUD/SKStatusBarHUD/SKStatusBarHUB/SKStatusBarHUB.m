//
//  SKStatusBarHUB.m
//  StatusBarHUB
//
//  Created by King on 15/1/26.
//  Copyright (c) 2015年 king. All rights reserved.
//

#import "SKStatusBarHUB.h"

// 窗口高度
#define StatusBarHeight 20

// 动画执行时间
#define SKDuration 0.5

// 窗口停留时间
#define SKDelay 1.5

// 字体
#define SKFont [UIFont systemFontOfSize:14]

@implementation SKStatusBarHUB

UIWindow *_window;

/**
 *  showMessage
 *
 *  @param msg   <#msg description#>
 *  @param image <#image description#>
 */
+ (void)showMessage:(NSString *)msg image:(UIImage *)image {
    if (_window) return;
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    btn.titleLabel.font = SKFont;
    btn.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
    [btn setTitle:msg forState:UIControlStateNormal];
    [btn setImage:image forState:UIControlStateNormal];
    
    _window = [[UIWindow alloc] init];
    _window.backgroundColor = [UIColor blackColor];
    _window.frame = CGRectMake(0, -StatusBarHeight, [UIScreen mainScreen].bounds.size.width, StatusBarHeight);
    _window.windowLevel = UIWindowLevelAlert;
    
    btn.frame = _window.bounds;
    [_window addSubview:btn];
    
    _window.hidden = NO;
    
    [UIView animateWithDuration:SKDuration animations:^{
        CGRect frame = _window.frame;
        frame.origin.y = 0;
        _window.frame = frame;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:SKDuration delay:SKDelay options:kNilOptions animations:^{
            CGRect frame = _window.frame;
            frame.origin.y = -StatusBarHeight;
            _window.frame = frame;
        } completion:^(BOOL finished) {
            _window = nil;
        }];
    }];

}

+(void)showMessage:(NSString *)msg imageName:(NSString *)imageName {
    return [self showMessage:msg image:[UIImage imageNamed:imageName]];
}

+ (void)showSuccess:(NSString *)msg {
    return [self showMessage:msg imageName:@"SKStatusBarHUB.bundle/success"];
}

+(void)showError:(NSString *)msg {
    return [self showMessage:msg imageName:@"SKStatusBarHUB.bundle/error"];
}

@end
