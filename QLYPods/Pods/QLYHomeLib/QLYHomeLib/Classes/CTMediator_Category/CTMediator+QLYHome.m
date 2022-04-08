//
//  CTMediator+QLYHome.m
//  CTMediator
//
//  Created by QLY on 2022/4/7.
//

#import "CTMediator+QLYHome.h"

@implementation CTMediator (QLYHome)

- (UIViewController *)presentQLYHomeViewController:(void (^)(NSString *))callback
{
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"callback"] = callback;
    return [self performTarget:@"QLYHome" action:@"QLYHomeViewController" params:params shouldCacheTarget:NO];
}


@end
