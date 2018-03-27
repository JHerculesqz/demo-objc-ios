//
//  RootActivity.m
//  shieldIns
//
//  Created by Monkey on 2018/3/27.
//  Copyright © 2018年 Monkey. All rights reserved.
//

#import "RootActivity.h"

@interface RootActivity ()

@end

@implementation RootActivity
//#region Const

const BOOL WALLE_DEBUG_ROOT = YES;
const NSString* FILE_PATH_ROOT = @"fuck";

//#endregion

//#region Fields

//#endregion

//#region lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated{
    [self _initEx];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//#endregion

//#region inner

//#region init

-(void)_initEx{
    [self _isLogin];
}

//#endregion

//#region login

-(void)_isLogin{
    IsLoginByPost *oCallback = [[IsLoginByPost alloc]init];
    [LoginUtilsEx isLogin:FILE_PATH_ROOT oUIViewController:self oCallback:oCallback];
}

//#endregion

//#region slideMenu

- (void)awakeFromNib
{
    [SlideMenuUtilsEx initEx:self strLeftMenuId:@"LeftMenuActivity" strContentId:@"ContentActivity"];
}

//#endregion

//#endregion

//#region callback

//#endregion

//#region 3rd

//#endregion
@end
