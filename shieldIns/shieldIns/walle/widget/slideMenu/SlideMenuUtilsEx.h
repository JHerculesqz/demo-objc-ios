//
//  SliedMenuUtilsEx.h
//  shieldIns
//
//  Created by Monkey on 2018/3/27.
//  Copyright © 2018年 Monkey. All rights reserved.
//  - (void)awakeFromNib

#import <Foundation/Foundation.h>
#import "RESideMenu.h"

@interface SlideMenuUtilsEx : NSObject
//#region initEx
+(void)initEx:(RESideMenu*)oSlideMenu strLeftMenuId:(NSString*)strLeftMenuId strContentId:(NSString*)strContentId;
//#endregion

//#region go2
+(void)go2:(UIViewController*)oFromActivity strToActivityName:(NSString*)strToActivityName;
//#endregion
@end
