//
//  LoginActivity.m
//  shieldIns
//
//  Created by Monkey on 2018/3/23.
//  Copyright © 2018年 Monkey. All rights reserved.
//

#import "LoginActivity.h"
#import "NavUtilsEx.h"

@interface LoginActivity ()
@property (strong, nonatomic) IBOutlet UITextField *m_oTextViewUser;
@property (strong, nonatomic) IBOutlet UITextField *m_oTextViewPwd;
@end

@implementation LoginActivity
//#region Const

const BOOL WALLE_DEBUG_LOGINACTIVITY = YES;
const NSString* FILE_PATH_LOGINACTIVITY = @"fuck";

//#endregion

//#region Fields

//#endregion

//#region lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//#endregion

//#region inner

//#region btn

- (IBAction)onClickLogin:(id)sender {
    //
    NSString *strUser = self.m_oTextViewUser.text;
    NSString *strPwd = self.m_oTextViewPwd.text;
    LoginByPost* oCallback = [[LoginByPost alloc]init];

    [LoginUtilsEx login:FILE_PATH_LOGINACTIVITY oView:self.view strUser:strUser strPwd:strPwd oUIViewController:self  oCallback:oCallback];
} 

//#endregion

//#endregion

//#region callback

//#endregion

//#region 3rd

//#endregion
@end
