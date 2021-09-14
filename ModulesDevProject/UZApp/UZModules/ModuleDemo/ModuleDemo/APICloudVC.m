//
//  APICloudVC.m
//  ModuleDemo
//
//  Created by 晟骏 王 on 2021/9/9.
//  Copyright © 2021 APICloud. All rights reserved.
//

#import "APICloudVC.h"
#import "Flutter/Flutter.h"
#import "MyAppDelegate.h"

@interface APICloudVC ()

@end

@implementation APICloudVC

- (void)viewDidLoad {
  [super viewDidLoad];
  // Make a button to call the showFlutter function when pressed.
  self.view.backgroundColor = [UIColor whiteColor];
  UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
  [button addTarget:self
             action:@selector(showFlutter)
   forControlEvents:UIControlEventTouchUpInside];
  [button setTitle:@"Show Flutter!" forState:UIControlStateNormal];
  button.backgroundColor = UIColor.blueColor;
  button.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
  [self.view addSubview:button];
}

- (void)showFlutter {
  FlutterEngine *flutterEngine =
      [MyAppDelegate sharedDelegate].flutterEngine;
  FlutterViewController *flutterViewController =
      [[FlutterViewController alloc] initWithEngine:flutterEngine nibName:nil bundle:nil];
  [self.navigationController pushViewController:flutterViewController animated:YES];
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
