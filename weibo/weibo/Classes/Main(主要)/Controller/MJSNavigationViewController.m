//
//  MJSNavigationViewController.m
//  weibo
//
//  Created by Kluth on 2019/9/8.
//  Copyright © 2019 Kluth. All rights reserved.
//

#import "MJSNavigationViewController.h"

@interface MJSNavigationViewController ()<UIGestureRecognizerDelegate>

@end

@implementation MJSNavigationViewController
//搭建基本结构 -> 设置底部条 ->设置顶部条标题字体 ->处理导航控制器业务逻辑(跳转)
+ (void)load{
	UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedIn:self, nil];
	
	//设置导航条标题:=> UINavigationBar
	NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
	attrs[NSFontAttributeName] = [UIFont boldSystemFontOfSize:22];
	[navBar setTitleTextAttributes:attrs];
	
	//设置导航条背景图片
	[navBar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackground"] forBarMetrics:UIBarMetricsDefault];
}
- (void)viewDidLoad {
    [super viewDidLoad];
	
	UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self.interactivePopGestureRecognizer.delegate action:@selector(handleNavigationTransition:)];
	
	[self.view addGestureRecognizer:pan];
	
	pan.delegate = self;
	//手势滑动工作
	//控制手势什么时候触发
	
	//禁止之前手势
	self.interactivePopGestureRecognizer.enabled = NO;
}
#pragma mark UIGestureRecognizerDelegate
//是否触发手势
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch{
	return self.childViewControllers.count > 1;

}
/*
 UIPanGestureRecognizer
 UIScreenEdgePanGestureRecognizer：导航滑动手势
 <UIScreenEdgePanGestureRecognizer: 0x7fac877159b0; state = Possible; delaysTouchesBegan = YES; view = <UILayoutContainerView 0x7fac8770f730>; target= <(action=handleNavigationTransition:, target=<_UINavigationInteractiveTransition 0x7fac87704560>)
 */
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
	if(self.childViewControllers.count > 0){ //非根控制器
		//手势失效 可能手势代理做了一些事情，导致手势失效
		
		viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem backButtonitemWithImage:[UIImage imageNamed:@"backImage"] hightImage:[UIImage imageNamed:@"backImage-click"] target:self action:@selector(back) title:@"返回"];
		
		NSLog(@"%@pop---------",self.interactivePopGestureRecognizer);
	}
	//真正跳转
	[super pushViewController:viewController animated:animated];
}
-(void)back{
	[self popViewControllerAnimated:YES];
}
@end
