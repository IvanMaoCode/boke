//
//  MJSSettingViewController.m
//  weibo
//
//  Created by Kluth on 2019/9/8.
//  Copyright © 2019 Kluth. All rights reserved.
//

#import "MJSSettingViewController.h"
#import "UIBarButtonItem+Item.h"
@interface MJSSettingViewController ()

@end

@implementation MJSSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
	/*
	//设置导航条左边按钮
	UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
	[backButton setTitle:@"返回" forState:UIControlStateNormal];
	[backButton setImage:[UIImage imageNamed:@"backImage"] forState:UIControlStateNormal];
	[backButton setImage:[UIImage imageNamed:@"backImage-click"] forState:UIControlStateHighlighted];
	[backButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
	[backButton setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
	[backButton sizeToFit];
	backButton.contentEdgeInsets = UIEdgeInsetsMake(0, -2, 0, 0);
	//返回
	[backButton addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
	
	self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
	*/
	self.navigationItem.title = @"设置";
	//左边返回按钮
	//self.navigationItem.leftBarButtonItem = [UIBarButtonItem backButtonitemWithImage:[UIImage imageNamed:@"backImage"] hightImage:[UIImage imageNamed:@"backImage-click"] target:self action:@selector(back) title:@"返回"];
	
	//右边jump
	self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"jump" style:0 target:self action:@selector(jump)];
}
-(void)jump{
	UIViewController *vc = [[UIViewController alloc] init];
	vc.view.backgroundColor = [UIColor redColor];

	
	[self.navigationController pushViewController:vc animated:YES];
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
