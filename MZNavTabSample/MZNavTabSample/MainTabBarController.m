//
//  MainTabBarController.m
//  MZNavTabSample
//
//  Created by Jamin on 2/26/15.
//  Copyright (c) 2015 MZ. All rights reserved.
//

#import "MainTabBarController.h"
#import "MZNavTabItemController.h"



@interface MainTabBarController ()

@end



#define UIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.tabBar.selectedImageTintColor = UIColorFromRGB(0x45addd);

    //    [self addChildViewController:navTabController2];
    UIViewController * viewController1 = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController1"];
    UIViewController * viewController2 = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController2"];
    self.itemViewControllers = @[viewController1, viewController2];
    self.tabBar.delegate = self;

//    [self tabBar:self.tabBar didSelectItem:[self.tabBar.items firstObject]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
