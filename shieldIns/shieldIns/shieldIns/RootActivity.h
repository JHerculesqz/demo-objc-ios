//
//  RootActivity.h
//  shieldIns
//
//  Created by Monkey on 2018/3/27.
//  Copyright © 2018年 Monkey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RESideMenu.h"
#import "SlideMenuUtilsEx.h"
#import "NavUtilsEx.h"
#import "LoginUtilsEx.h"
#import "IsLoginByPost.h"
#import "LogoutByPost.h"

@interface RootActivity : RESideMenu <RESideMenuDelegate>
-(void)_initEx;
-(void)_isLogin;
@end
