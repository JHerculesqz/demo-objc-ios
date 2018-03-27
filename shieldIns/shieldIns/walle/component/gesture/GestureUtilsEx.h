//
//  GestureUtilsEx.h
//  shieldIns
//
//  Created by Monkey on 2018/3/27.
//  Copyright © 2018年 Monkey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface GestureUtilsEx : NSObject
+(void)bindEvent4View:(UIViewController*)oUIViewController oView:(UIView*)oView oCallback:(SEL)oCallback;
@end
