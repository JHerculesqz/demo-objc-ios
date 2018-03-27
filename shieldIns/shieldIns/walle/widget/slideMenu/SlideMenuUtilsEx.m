//
//  SlideMenuUtilsEx.m
//  shieldIns
//
//  Created by Monkey on 2018/3/27.
//  Copyright © 2018年 Monkey. All rights reserved.
//

#import "SlideMenuUtilsEx.h"

@implementation SlideMenuUtilsEx
//#region initEx
+(void)initEx:(RESideMenu*)oSlideMenu strLeftMenuId:(NSString*)strLeftMenuId strContentId:(NSString*)strContentId{
    oSlideMenu.menuPreferredStatusBarStyle = UIStatusBarStyleLightContent;
    oSlideMenu.contentViewShadowColor = [UIColor blackColor];
    oSlideMenu.contentViewShadowOffset = CGSizeMake(0, 0);
    oSlideMenu.contentViewShadowOpacity = 0.6;
    oSlideMenu.contentViewShadowRadius = 12;
    oSlideMenu.contentViewShadowEnabled = YES;
    
    oSlideMenu.contentViewController = [oSlideMenu.storyboard instantiateViewControllerWithIdentifier:strContentId];
    oSlideMenu.leftMenuViewController = [oSlideMenu.storyboard instantiateViewControllerWithIdentifier:strLeftMenuId];
    //    oViewController = [UIImage imageNamed:@"Stars"];
    oSlideMenu.delegate = oSlideMenu;
}
//#endregion

//#region go2

+(void)go2:(UIViewController*)oFromActivity strToActivityName:(NSString*)strToActivityName{
    [oFromActivity.sideMenuViewController setContentViewController:[[UINavigationController alloc] initWithRootViewController:[oFromActivity.storyboard instantiateViewControllerWithIdentifier: strToActivityName]]
                                                 animated:YES];
    [oFromActivity.sideMenuViewController hideMenuViewController];
}

//#endregion
@end
