//
//  QLYBundleTool.m
//  QLYHomeLib
//
//  Created by QLY on 2022/4/4.
//

#import "QLYBundleTool.h"

@implementation QLYBundleTool

+ (UIImage *)resourceBundleWithFrameWork:(NSString *)frameworkName imageName:(NSString *)imageName{
    UIImage *image = nil;
   
    NSURL *bundleURL = [[NSBundle mainBundle] URLForResource:@"Frameworks" withExtension:nil];
    bundleURL = [bundleURL URLByAppendingPathComponent:frameworkName];
    bundleURL = [bundleURL URLByAppendingPathExtension:@"framework"];
    if (bundleURL) {
        NSBundle *imgBundle = [NSBundle bundleWithURL:bundleURL];
        bundleURL = [imgBundle URLForResource:frameworkName withExtension:@"bundle"];
        if (bundleURL) {
            NSBundle *bundle = [NSBundle bundleWithURL:bundleURL];
            NSInteger scale = [[UIScreen mainScreen] scale];
            NSString *imgName = [NSString stringWithFormat:@"%@@%zdx.png",imageName,scale];
            image = [UIImage imageWithContentsOfFile:[bundle pathForResource:imgName ofType:nil]];
        }
    }
    return image;
}

+ (UIImage *)homeLibResourceBundleWithImageName:(NSString *)imageName
{// QLYHomeLib 三方库获取图片资源
   return [QLYBundleTool resourceBundleWithFrameWork:@"QLYHomeLib" imageName:imageName];
}
@end
