//
//  MJSEssenceViewController.m
//  weibo
//
//  Created by Kluth on 2019/9/6.
//  Copyright © 2019 Kluth. All rights reserved.
//

#import "MJSEssenceViewController.h"

@interface MJSEssenceViewController ()

@end

@implementation MJSEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	self.view.backgroundColor = [UIColor redColor];

	//设置导航条
	[self setupNavBar];
}
-(void)setupNavBar{
	//左边按钮 方法1
	/*
	UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
	[btn setImage:[UIImage imageNamed:@"nav_item_game_icon"] forState:UIControlStateNormal];
	[btn setImage:[UIImage imageNamed:@"nav_item_game_click_icon"] forState:UIControlStateHighlighted];
	[btn sizeToFit];
	[btn addTarget:self action:@selector(game) forControlEvents:UIControlEventTouchUpInside];
	//self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:btn];
	UIView *containView = [[UIView alloc] initWithFrame:btn.bounds];
	[containView addSubview:btn];
	UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithCustomView:containView];
	self.navigationItem.leftBarButtonItem = leftItem;
	*/
	
	//左边按钮 方法2
	self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"nav_item_game_icon"] hightImage:[UIImage imageNamed:@"nav_item_game_click_icon"]  target:self action:@selector(game)];
	
	//右边按钮
	self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"nav_item_random_icon"] hightImage:[UIImage imageNamed:@"nav_item_random_click_icon"]  target:self action:@selector(share)];
	//中间标题
	UIImage *image = [UIImage imageNamed:@"titleView"];
	self.navigationItem.titleView = [[UIImageView alloc] initWithImage:image];
	
  }
-(void)game{
	MJSFunc;
}
-(void)share{
	MJSLog(@"分享");
}
@end
