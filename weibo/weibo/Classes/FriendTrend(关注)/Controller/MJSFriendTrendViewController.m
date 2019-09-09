 //
//  MJSFriendTrendViewController.m
//  weibo
//
//  Created by Kluth on 2019/9/6.
//  Copyright © 2019 Kluth. All rights reserved.
//

#import "MJSFriendTrendViewController.h"

@interface MJSFriendTrendViewController ()

@end

@implementation MJSFriendTrendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	[self setupNavBar];
}
-(void)setupNavBar{
	//左边按钮 方法2
	self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"friendRecommendIcon-click"] hightImage:[UIImage imageNamed:@"friendRecommendIcon"]  target:self action:@selector(friendsRecommend)];
	
	//中间标题
	
	self.navigationItem.title = @"我的关注";
}
-(void)friendsRecommend{
	NSLog(@"friendsRecommend");
}
@end
