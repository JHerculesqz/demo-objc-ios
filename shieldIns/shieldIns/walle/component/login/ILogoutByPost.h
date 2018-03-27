//
//  ILogoutByPost.h
//  shieldIns
//
//  Created by Monkey on 2018/3/27.
//  Copyright © 2018年 Monkey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol ILogoutByPost <NSObject>
-(void)go2LoginPage:(UIViewController *)oUIViewController;
-(void)logoutByPost;
@end
