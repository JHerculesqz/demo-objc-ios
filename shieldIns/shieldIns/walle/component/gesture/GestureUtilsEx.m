//
//  GestureUtilsEx.m
//  shieldIns
//
//  Created by Monkey on 2018/3/27.
//  Copyright © 2018年 Monkey. All rights reserved.
//

#import "GestureUtilsEx.h"

@implementation GestureUtilsEx
//#region bindEvent4View
+(void)bindEvent4View:(UIViewController *)oUIViewController oView:(UIView *)oView oCallback:(SEL)oCallback{
    UITapGestureRecognizer *oGesture1 = [[UITapGestureRecognizer alloc] initWithTarget:oUIViewController action:oCallback];
    [oView addGestureRecognizer:oGesture1];
}
//#endregion
@end
