//
//  UIImage+UIImage.m
//  weibo
//
//  Created by Kluth on 2019/9/6.
//  Copyright © 2019 Kluth. All rights reserved.
//

#import "UIImage+UIImage.h"

@implementation UIImage (UIImage)
+(UIImage *)imageOriginalWithName:(NSString *)imageName{
	UIImage *image = [UIImage imageNamed:imageName];
	return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}
@end
