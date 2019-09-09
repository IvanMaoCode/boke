//
//  MJSMeViewController.m
//  weibo
//
//  Created by Kluth on 2019/9/6.
//  Copyright © 2019 Kluth. All rights reserved.
//

#import "MJSMeViewController.h"
#import "MJSSettingViewController.h"
@interface MJSMeViewController ()

@end

@implementation MJSMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
	[self setupNavBar];
}
-(void)setupNavBar{
	//左边按钮 方法2
//	self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"friendRecommendIcon-click"] hightImage:[UIImage imageNamed:@"friendRecommendIcon"]  target:self action:@selector(friendsRecommend)];
	
	//设置
	UIBarButtonItem *setting = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"mine-setting-icon"] hightImage:[UIImage imageNamed:@"mine-setting-icon-click"] target:self action:@selector(setting)];
	
	//夜间模式
	UIBarButtonItem *nightItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"mine-moon-icon"] selImage:[UIImage imageNamed:@"mine-moon-icon-click"] target:self action:@selector(night:)];
	
	self.navigationItem.rightBarButtonItems = @[setting,nightItem];
	
	self.navigationItem.title = @"我的";
	
	//UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedIn:self, nil];
	//[navBar setBackgroundImage:[UIImage imageNamed:@""] forBarMetrics:UIBarMetricsDefault];
}
#pragma mark - 设置调用
-(void)setting{
	MJSSettingViewController *settingVc = [[MJSSettingViewController alloc] init];
	settingVc.hidesBottomBarWhenPushed = YES;
	[self.navigationController pushViewController:settingVc animated:YES];	
	//底部处理隐藏
}
-(void)night:(UIButton *)button{
	button.selected = !button.selected;
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
