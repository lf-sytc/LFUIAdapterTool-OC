//
//  LFUIAdaptiveTool.m
//  Pods-LFUIKit_Example
//
//  Created by liufan on 2019/7/24.
//

#import "LFUIAdaptiveTool.h"

@interface LFUIAdaptiveTool ()

//是否是X系列手机
@property (nonatomic,assign,readwrite) BOOL iPhoneX;
//X系列底部安全区
@property (nonatomic,assign,readwrite) CGFloat BOTTOM_SAFE_HEIGHT;
//状态栏高度
@property (nonatomic,assign,readwrite) CGFloat STATUS_HEIGHT;
//导航栏高度 兼容X系列手机
@property (nonatomic,assign,readwrite) CGFloat NAV_HEIGHT;
//Tabbar高度 兼容X系列手机
@property (nonatomic,assign,readwrite) CGFloat TABBAR_HEIGHT;


//导航栏高度 不兼容X系列手机
@property (nonatomic,assign,readwrite) CGFloat ONLY_NAV_HEIGHT;
//Tabbar高度 不兼容X系列手机
@property (nonatomic,assign,readwrite) CGFloat ONLY_TABBAR_HEIGHT;

//竖屏下 屏幕宽、高
@property (nonatomic,assign,readwrite) CGFloat SCREEN_WIDTH;
@property (nonatomic,assign,readwrite) CGFloat SCREEN_HEIGHT;
//默认安全区域
@property (nonatomic,assign,readwrite) CGFloat SAFE_AREA_HEIGHT;

@end


@implementation LFUIAdaptiveTool

#pragma mark - Init
+ (instancetype)sharedInstance{
    static LFUIAdaptiveTool *tool = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        tool = [[LFUIAdaptiveTool alloc] init];
    });
    return tool;
}

- (instancetype)init{
    
    self = [super init];
    if (self) {
        
        
        self.ONLY_NAV_HEIGHT = 44.0;
        self.ONLY_TABBAR_HEIGHT = 49.0;
        
        //X系列底部安全区
        [self AdaptiveIphoneX];
        
        //状态栏高度
        if (CGRectEqualToRect([[UIApplication sharedApplication] statusBarFrame] ,CGRectZero)) {
            self.STATUS_HEIGHT = self.iPhoneX?44:20;
        }else{
            self.STATUS_HEIGHT = [[UIApplication sharedApplication] statusBarFrame].size.height;
        }
        
        //导航栏高度 兼容X系列手机
        self.NAV_HEIGHT = self.ONLY_NAV_HEIGHT + self.STATUS_HEIGHT;
        
        //Tabbar高度 兼容X系列手机
        self.TABBAR_HEIGHT = self.ONLY_TABBAR_HEIGHT + self.BOTTOM_SAFE_HEIGHT;
        
        //竖屏下 屏幕宽、高
        self.SCREEN_WIDTH = [UIScreen mainScreen].bounds.size.width;
        self.SCREEN_HEIGHT = [UIScreen mainScreen].bounds.size.height;
        
        self.SAFE_AREA_HEIGHT = self.SCREEN_HEIGHT - self.NAV_HEIGHT - self.BOTTOM_SAFE_HEIGHT;
        
    }
    return self;
}


#pragma mark - iPhoneX 相关
- (void)AdaptiveIphoneX{
    
    if (UIDevice.currentDevice.userInterfaceIdiom != UIUserInterfaceIdiomPhone) {
        self.iPhoneX = NO;
        self.BOTTOM_SAFE_HEIGHT = 0;
    }
    else{
        if (@available(iOS 11.0, *)) {
            UIWindow *mainWindow = [[[UIApplication sharedApplication] delegate] window];
            self.iPhoneX = mainWindow.safeAreaInsets.bottom > 0.0;
            self.BOTTOM_SAFE_HEIGHT = mainWindow.safeAreaInsets.bottom;
        }else{
            self.iPhoneX = NO;
            self.BOTTOM_SAFE_HEIGHT = 0;
        }
    }
}

@end

