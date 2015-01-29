//
//  SKStatusBarHUB.h
//  StatusBarHUB
//
//  Created by King on 15/1/26.
//  Copyright (c) 2015年 king. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SKStatusBarHUB : NSObject
/**
 *  showMessage
 *
 *  @param msg   <#msg description#>
 *  @param image image description
 */
+ (void)showMessage:(NSString *)msg image:(UIImage *)image;

/**
 *  showMessage
 *
 *  @param msg       <#msg description#>
 *  @param imageName <#imageName description#>
 */
+ (void)showMessage:(NSString *)msg imageName:(NSString *)imageName;

/**
 *  showSuccess
 *
 *  @param msg msg description
 */
+ (void)showSuccess:(NSString *)msg;

/**
 *  showError
 *
 *  @param msg <#msg description#>
 */
+ (void)showError:(NSString *)msg;


@end
