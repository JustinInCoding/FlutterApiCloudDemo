//
//  MyAppDelegate.m
//  ModuleDemo
//
//  Created by 晟骏 王 on 2021/9/9.
//  Copyright © 2021 APICloud. All rights reserved.
//

#import "MyAppDelegate.h"

@implementation MyAppDelegate

+ (instancetype)sharedDelegate {
  static MyAppDelegate *_sharedDelegate;
  static dispatch_once_t token;
  dispatch_once(&token,^{ _sharedDelegate = [[MyAppDelegate alloc] init];} );
  return _sharedDelegate;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary<UIApplicationLaunchOptionsKey,id> *)launchOptions {
  NSLog(@"didFinishLaunchingwithOptions");
  self.flutterEngine = [[FlutterEngine alloc] initWithName:@"my flutter engine"];
  [self.flutterEngine run];
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
  NSLog(@"applicationDidEnterBackground");
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
  NSLog(@"applicationWillEnterForeground");
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
  NSLog(@"applicationDidBecomeActive");
}

@end
