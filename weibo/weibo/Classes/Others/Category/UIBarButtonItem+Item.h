//
//  UIBarButtonItem+Item.h
//  weibo
//
//  Created by Kluth on 2019/9/8.
//  Copyright © 2019 Kluth. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIBarButtonItem (Item)
+(UIBarButtonItem *)itemWithImage:(UIImage *)image hightImage:(UIImage *)hightImage target:(id)target action:(SEL)action;
+(UIBarButtonItem *)itemWithImage:(UIImage *)image selImage:(UIImage *)selImage target:(id)target action:(SEL)action;
+(UIBarButtonItem *)backButtonitemWithImage:(UIImage *)image hightImage:(UIImage *)hightImage target:(id)target action:(SEL)action title:(NSString *)title;
@end

NS_ASSUME_NONNULL_END
