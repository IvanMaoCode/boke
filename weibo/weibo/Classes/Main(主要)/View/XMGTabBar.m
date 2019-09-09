//
//  XMGTabBar.m
//  weibo
//
//  Created by Kluth on 2019/9/7.
//  Copyright © 2019 Kluth. All rights reserved.
//

#import "XMGTabBar.h"
#import "UIView+Frame.h"
@interface XMGTabBar()
@property(nonatomic,weak) UIButton *plusButton;
@end
@implementation XMGTabBar
- (UIButton *)plusButton{
	if (_plusButton == nil) {
		UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
		[btn setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
		[btn setImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
		[btn sizeToFit];
		[self addSubview:btn];
		
		_plusButton = btn;
	}
	return _plusButton;
}
-(void)layoutSubviews{
	[super layoutSubviews];
	NSLog(@"--------%@",self.subviews);
	NSLog(@"来了");
	
	//调转tabBarButton位置
	NSInteger count = self.items.count;
	//CGFloat btnW = self.bounds.size.width / (count + 1);
	CGFloat btnW = self.mjs_width / (count + 1);
	CGFloat btnH = self.mjs_height;
	CGFloat x = 0;
	int i = 0;
	//苹果私有类
	//遍历子控件 调整布局
	for(UIView *tabBarButton in self.subviews){
		if([tabBarButton isKindOfClass:NSClassFromString(@"UITabBarButton")]){
			
			if(i == 2){
				i += 1;
			}
			x = i * btnW;
			tabBarButton.frame = CGRectMake(x, 0, btnW, btnH);
			i++;
			//NSLog(@"%@",tabBarButton);
		}
	}
	//调整发布按钮的位置
	self.plusButton.center = CGPointMake(self.mjs_width * 0.5, self.mjs_height * 0.5);
}
@end
