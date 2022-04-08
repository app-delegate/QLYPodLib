//
//  ViewController.m
//  QLYPods
//
//  Created by QLY on 2022/4/3.
//

#import "ViewController.h"
#import <QLYHomeLib/CTMediator+QLYHome.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{

    UIViewController *vc = [[CTMediator sharedInstance] presentQLYHomeViewController:^(NSString * result) {
        NSLog(@"presentQLYHomeViewController");
    }];
    vc.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:vc animated:NO completion:nil];
}

 
@end
