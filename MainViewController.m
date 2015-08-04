//
//  MainViewController.m
//  RtableTest
//
//  Created by Ibokan on 15/8/4.
//  Copyright (c) 2015年 Ibokan. All rights reserved.
//

#import "MainViewController.h"
#import "RTLabel.h"
#import "RegexKitLite.h"
@interface MainViewController ()<RTLabelDelegate>
{
    RTLabel *testRTLable;
}
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    // Do any additional setup after loading the view.
//    
//    NSString *linkString = @"http://www.baidu.com";
//    
//    testRTLable = [[RTLabel alloc ]initWithFrame:CGRectMake(20, 50, 200, 250)];
//    testRTLable.linkAttributes = @{@"color":@"black"};
//    testRTLable.selectedLinkAttributes = @{@"color":@"blue"};
//    testRTLable.delegate = self;
//    testRTLable.text = linkString;
//    [self.view addSubview:testRTLable];
   
    NSString *regetTest = @"yang @yang dd#idid# Https://www.baidu.com_hh @spoil hdhus";
    NSString *regue = @"@\\w+";
    NSArray *result =[regetTest componentsSeparatedByRegex:regue];
    NSLog(@"regux = %@",result);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
