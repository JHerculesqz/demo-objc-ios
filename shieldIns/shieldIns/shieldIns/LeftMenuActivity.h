//
//  LeftMenuActivity.h
//  shieldIns
//
//  Created by Monkey on 2018/3/26.
//  Copyright © 2018年 Monkey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RESideMenu.h"
#import "SlideMenuUtilsEx.h"
#import "GestureUtilsEx.h"
#import "RootActivity.h"

@interface LeftMenuActivity : UIViewController<RESideMenuDelegate>
-(void)_initEx;
@end
