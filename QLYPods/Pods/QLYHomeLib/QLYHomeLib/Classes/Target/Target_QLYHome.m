//
//  Target_QLYHome.m
//  CTMediator
//
//  Created by QLY on 2022/4/7.
//

#import "Target_QLYHome.h"
#import "QLYHomeViewController.h"

@implementation Target_QLYHome
- (UIViewController *)Action_QLYHomeViewController:(NSDictionary *)params
{
    typedef void (^CallbackType)(NSString *);
    CallbackType callback = params[@"callback"];
    if (callback) {
        callback(@"Action_QLYHomeViewController success");
    }
    QLYHomeViewController *viewController = [[QLYHomeViewController alloc] init];
    return viewController;
}

@end
