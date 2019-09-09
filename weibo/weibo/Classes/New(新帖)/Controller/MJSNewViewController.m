//
//  MJSNewViewController.m
//  weibo
//
//  Created by Kluth on 2019/9/6.
//  Copyright © 2019 Kluth. All rights reserved.
//

#import "MJSNewViewController.h"

@interface MJSNewViewController ()

@end

@implementation MJSNewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	[self setupNavBar];
}

-(void)setupNavBar{
	//左边按钮 方法2
	self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"mainTagSubIcon"] hightImage:[UIImage imageNamed:@"mainTagSubClickIcon"]  target:nil action:@selector(game)];

	//中间标题
	UIImage *image = [UIImage imageNamed:@"titleView"];
	self.navigationItem.titleView = [[UIImageView alloc] initWithImage:image];
	
}

@end
