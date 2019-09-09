//
//  UIBarButtonItem+Item.m
//  weibo
//
//  Created by Kluth on 2019/9/8.
//  Copyright © 2019 Kluth. All rights reserved.
//

#import "UIBarButtonItem+Item.h"

@implementation UIBarButtonItem (Item)
+(UIBarButtonItem *)itemWithImage:(UIImage *)image hightImage:(UIImage *)hightImage target:(id)target action:(SEL)action{
	UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
	[btn setImage:image forState:UIControlStateNormal];
	[btn setImage:hightImage forState:UIControlStateHighlighted];
	[btn sizeToFit];
	[btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
	//self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:btn];
	//把UIButton封装成UIBarButtonItem，就导致按钮点击区扩大
	UIView *containView = [[UIView alloc] initWithFrame:btn.bounds];
	[containView addSubview:btn];
	return [[UIBarButtonItem alloc] initWithCustomView:containView];
	
}
+(UIBarButtonItem *)itemWithImage:(UIImage *)image selImage:(UIImage *)selImage target:(id)target action:(SEL)action{
	UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
	[btn setImage:image forState:UIControlStateNormal];
	[btn setImage:selImage forState:UIControlStateSelected];
	[btn sizeToFit];
	[btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
	//self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:btn];
	//把UIButton封装成UIBarButtonItem，就导致按钮点击区扩大
	UIView *containView = [[UIView alloc] initWithFrame:btn.bounds];
	[containView addSubview:btn];
	return [[UIBarButtonItem alloc] initWithCustomView:containView];
	
}
+(UIBarButtonItem *)backButtonitemWithImage:(UIImage *)image hightImage:(UIImage *)hightImage target:(id)target action:(SEL)action title:(NSString *)title{
	
	//设置导航条左边按钮
	UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
	[backButton setTitle:title forState:UIControlStateNormal];
	[backButton setImage:image forState:UIControlStateNormal];
	[backButton setImage:hightImage forState:UIControlStateHighlighted];
	[backButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
	[backButton setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
	[backButton sizeToFit];
	backButton.contentEdgeInsets = UIEdgeInsetsMake(0, -23, 0, 0);
	//返回
	[backButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
	
	return  [[UIBarButtonItem alloc] initWithCustomView:backButton];
	
}
@end
