//
//  MJSAdViewController.m
//  weibo
//
//  Created by Kluth on 2019/9/8.
//  Copyright © 2019 Kluth. All rights reserved.
//

#import "MJSAdViewController.h"


@interface MJSAdViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *launchImageView;
@property (weak, nonatomic) IBOutlet UIView *adContainView;

@end

@implementation MJSAdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	[self setupLaunchImage];
	
	//加载广告  -- 服务器-》查看接口文档-》1.判断接口对不对 2.解析数据(w_picurl,ori_curl:跳转到广告界面,w,h) =>请求数据(AFN)
	//导入AFN框架：cocopods
	//cocopods:管理第三方库，
	
	[self loadData];
}
#pragma mark 加载数据
-(void)loadData{
	//创建请求会话管理者

}
-(void)setupLaunchImage{
	if(MJSSreenW == 375){
		self.launchImageView.image = [UIImage imageNamed:@"launchScreen"];
	}
}

@end
