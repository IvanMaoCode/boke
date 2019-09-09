//
//  MJSTabBarController.m
//  weibo
//
//  Created by Kluth on 2019/9/6.
//  Copyright © 2019 Kluth. All rights reserved.
//

#import "MJSTabBarController.h"
#import "MJSEssenceViewController.h"
#import "MJSNewViewController.h"
#import "MJSFriendTrendViewController.h"
#import "MJSMeViewController.h"
#import "MJSPublishViewController.h"

#import "UIImage+UIImage.h"
#import "XMGTabBar.h"
#import "MJSNavigationViewController.h"
@interface MJSTabBarController ()

@end

@implementation MJSTabBarController
//只会调用一次
+ (void)load{
	//获取UITabBarItem
	//UITabBarItem *item = [UITabBarItem appearance];
	//设置按钮选中标题的颜色:g富文本:描述一个文字颜色，字体，阴影，空心，图片混排
	//创建一个描述文本属性的字典
	//获取哪个类UITabBarItem
	NSMutableArray *array = [NSMutableArray array];
	UITabBarItem *item = [UITabBarItem appearanceWhenContainedInInstancesOfClasses:array];
	
	NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
	attrs[NSForegroundColorAttributeName] = [UIColor redColor];
	[item setTitleTextAttributes:attrs forState:UIControlStateSelected];
	
	//设置字体尺寸：只有设置正常状态下，才会有效果
	
	NSMutableDictionary *attrsNor = [NSMutableDictionary dictionary];
	attrsNor[NSFontAttributeName] = [UIFont systemFontOfSize:10];
	[item setTitleTextAttributes:attrsNor forState:UIControlStateNormal];
}
//可能会调用多次
//+ (void)initialize
//{
//	if (self == [MJSTabBarController class]) {
//		<#statements#>
//	}
//}
- (void)viewDidLoad {
	[super viewDidLoad];
	
	[self setupAllTabBar];
	
	[self setupTabBarItem];
	
	//3.自定义tabBar
	[self setupTabBar];
	
	MJSLog(@"打印");
}
//- (void)viewWillAppear:(BOOL)animated{
//	[super viewWillAppear:animated];
//	NSLog(@"viewWillAppear---------%@",self.tabBar.subviews);
//}
-(void)setupTabBar{
	XMGTabBar *tabBar = [[XMGTabBar alloc] init];
	[self setValue:tabBar forKey:@"tabBar"];
}
-(void)setupAllTabBar{
	//2.1添加子控制器
	//精华
	MJSEssenceViewController *essenceVc = [[MJSEssenceViewController alloc] init];
	MJSNavigationViewController *nav1 = [[MJSNavigationViewController alloc]initWithRootViewController:essenceVc];
	//把第0个子控制器的View添加去
	[self addChildViewController:nav1];
	//新帖
	MJSNewViewController *newVc = [[MJSNewViewController alloc] init];
	MJSNavigationViewController *nav2 = [[MJSNavigationViewController alloc]initWithRootViewController:newVc];
	//把第0个子控制器的View添加去
	[self addChildViewController:nav2];
	//发布
//	MJSPublishViewController *publishVc = [[MJSPublishViewController alloc]init];
//	[self addChildViewController:publishVc];
	//关注
	MJSFriendTrendViewController *friendTrendVc = [[MJSFriendTrendViewController alloc] init];
	MJSNavigationViewController *nav4 = [[MJSNavigationViewController alloc]initWithRootViewController:friendTrendVc];
	[self addChildViewController:nav4];
	//我
	MJSMeViewController *meVc = [[MJSMeViewController alloc]init];
	MJSNavigationViewController *nav5 = [[MJSNavigationViewController alloc]initWithRootViewController:meVc];
	[self addChildViewController:nav5];
	
}
-(void)setupTabBarItem{
	UINavigationController *nav1 = self.childViewControllers[0];
	nav1.tabBarItem.title = @"精华";
	nav1.tabBarItem.badgeValue = @"10";
	nav1.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
	//快速生成一个没有渲染的图片
	nav1.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@"tabBar_essence_click_icon"];
	
	UINavigationController *nav2 = self.childViewControllers[1];
	nav2.tabBarItem.title = @"新帖";
	nav2.tabBarItem.image = [UIImage imageNamed:@"tabBar_new_icon"];
	nav2.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@"tabBar_new_click_icon"];
	
	//发布
	//MJSPublishViewController *publishVc = self.childViewControllers[2];
//	publishVc.tabBarItem.image = [UIImage imageOriginalWithName:@"tabBar_publish_icon"];
//	publishVc.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@"tabBar_publish_click_icon"];
//	//图片位置
//	publishVc.tabBarItem.imageInsets = UIEdgeInsetsMake(3, 0, -3, 0);
	
	UINavigationController *nav4 = self.childViewControllers[2];
	nav4.tabBarItem.title = @"关注";
	nav4.tabBarItem.image = [UIImage imageNamed:@"tabBar_friendTrends_icon"];
	nav4.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@"tabBar_friendTrends_click_icon"];
	
	UINavigationController *nav5 = self.childViewControllers[3];
	nav5.tabBarItem.title = @"我";
	nav5.tabBarItem.image = [UIImage imageNamed:@"tabBar_me_icon"];
	nav5.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@"tabBar_me_click_icon"];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
