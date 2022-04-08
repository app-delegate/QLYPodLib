//
//  CTMediator+QLYHome.h
//  CTMediator
//
//  Created by QLY on 2022/4/7.
//

#import <CTMediator/CTMediator.h>

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (QLYHome)
- (UIViewController *)presentQLYHomeViewController:(void (^)(NSString *))callback;

@end

NS_ASSUME_NONNULL_END
