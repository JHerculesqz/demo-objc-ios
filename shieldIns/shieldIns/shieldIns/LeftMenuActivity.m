//
//  LeftMenuActivity.m
//  shieldIns
//
//  Created by Monkey on 2018/3/26.
//  Copyright © 2018年 Monkey. All rights reserved.
//

#import "LeftMenuActivity.h"
#import "DevLstActivity.h"
#import "ReportActivity.h"
#import "GtsActivity.h"
#import "UIViewController+RESideMenu.h"

@interface LeftMenuActivity ()
@property (strong, nonatomic) IBOutlet UIView *m_oViewDevLst;
@property (strong, nonatomic) IBOutlet UIView *m_oViewReport;
@property (strong, nonatomic) IBOutlet UIView *m_oViewGts;
@property (strong, nonatomic) IBOutlet UIView *m_oViewLogout;
@end

@implementation LeftMenuActivity
//#region Const

const NSString *FILE_PATH_LeftMenuActivity = @"fuck";

//#endregion

//#region Fields

//#endregion

//#region lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    //_initEx
    [self _initEx];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

//#endregion

//#region inner

//#region init

-(void)_initEx{
    //bindEvent
    [GestureUtilsEx bindEvent4View:self oView:_m_oViewDevLst oCallback:@selector(onClickDevLstActivity)];
    [GestureUtilsEx bindEvent4View:self oView:_m_oViewReport oCallback:@selector(onClickReportActivity)];
    [GestureUtilsEx bindEvent4View:self oView:_m_oViewGts oCallback:@selector(onClickGtsActivity)];
    [GestureUtilsEx bindEvent4View:self oView:_m_oViewLogout oCallback:@selector(onClickLogout)];
}

//#endregion

//#region menu

-(void)onClickDevLstActivity{
    [SlideMenuUtilsEx go2:self strToActivityName:@"DevLstActivity"];
}
-(void)onClickReportActivity{
    [SlideMenuUtilsEx go2:self strToActivityName:@"ReportActivity"];
}
-(void)onClickGtsActivity{
    [SlideMenuUtilsEx go2:self strToActivityName:@"GtsActivity"];
}
-(void)onClickLogout{
    LogoutByPost *oCallback = [[LogoutByPost alloc]init];
    [LoginUtilsEx logout:FILE_PATH_LeftMenuActivity oUIViewController:self oCallback: oCallback];
}

-(void)_logout:(UIViewController *)oUIViewController{
    
}

//#endregion

//#endreigon

//#regin callback


//#endregion

//#regin 3rd

//#endregion
@end
