//
//  MyAppDelegate.h
//  ModuleDemo
//
//  Created by 晟骏 王 on 2021/9/9.
//  Copyright © 2021 APICloud. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UZAppDelegate.h"
#import "Flutter/Flutter.h"

NS_ASSUME_NONNULL_BEGIN

@interface MyAppDelegate : FlutterAppDelegate

+ (instancetype)sharedDelegate;

@property (nonatomic, strong) FlutterEngine *flutterEngine;
@end

NS_ASSUME_NONNULL_END
