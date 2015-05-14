//
//  HMTwoViewController.m
//  黑马微博
//
//  Created by apple on 14-7-3.
//  Copyright (c) 2014年 heima. All rights reserved.
//

#import "HMTwoViewController.h"
#import "HMThreeViewController.h"

@interface HMTwoViewController ()
- (IBAction)jumpThree;

@end

@implementation HMTwoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 1000条数据
    // @[1000条数据]
    
    // 存储数据到文件中
    // 把@[1000条数据]一口气写进去
    [NSKeyedArchiver archiveRootObject:<#(id)#> toFile:<#(NSString *)#>];
    
    // 从文件中读取数据
    // 把@[1000条数据]一口气读进来
    [NSKeyedUnarchiver unarchiveObjectWithFile:<#(NSString *)#>];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"哈哈" style:UIBarButtonItemStyleDone target:nil action:nil];
}

- (IBAction)jumpThree {
    HMThreeViewController *vc = [[HMThreeViewController alloc] init];
    vc.title = @"ThreeVC";
    vc.view.backgroundColor = [UIColor redColor];
    [self.navigationController pushViewController:vc animated:YES];
}
@end
