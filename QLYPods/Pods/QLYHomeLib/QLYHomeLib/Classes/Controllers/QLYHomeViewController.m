//
//  QLYHomeViewController.m
//  QLYHomeLib
//
//  Created by QLY on 2022/4/3.
//

#import "QLYHomeViewController.h"
#import "QLYHomeObj.h"
#import "QLYBundleTool.h"
@interface QLYHomeViewController ()

@property (nonatomic, strong) QLYHomeObj *homeObj;

@end

@implementation QLYHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.homeObj = [[QLYHomeObj alloc] init];
    self.homeObj.homeTitle = @"home";
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100,50, 50)];
    imageView.image = [QLYBundleTool homeLibResourceBundleWithImageName:@"btn_chatlive_audioaccept_high"];
    [self.view addSubview:imageView];
    NSLog(@"QLYHomeViewController");
}

- (void)printHomeTitle
{
    NSLog(@"self.homeObj.homeTitle = %@",self.homeObj.homeTitle);
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
