//
//  UIView+Frame.m
//  weibo
//
//  Created by Kluth on 2019/9/7.
//  Copyright © 2019 Kluth. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)
-(void)setMjs_height:(CGFloat)mjs_height{
	CGRect rect = self.frame;
	rect.size.height = mjs_height;
	self.frame = rect;
}
- (CGFloat)mjs_height{
	return self.frame.size.height;
}

- (void)setMjs_width:(CGFloat)mjs_width{
	CGRect rect = self.frame;
	rect.size.width = mjs_width;
	self.frame = rect;
}
- (CGFloat)mjs_width{
	return self.frame.size.width;
}

- (void)setMjs_x:(CGFloat)mjs_x{
	CGRect rect = self.frame;
	rect.origin.x = mjs_x;
	self.frame = rect;
}
- (CGFloat)mjs_x{
	return self.frame.origin.x;
}

- (void)setMjs_y:(CGFloat)mjs_y{
	CGRect rect = self.frame;
	rect.origin.y = mjs_y;
	self.frame = rect;
}
- (CGFloat)mjs_y{
	return self.frame.origin.y;
}
@end
