//
//  LFUIAdaptiveTool.h
//  Pods-LFUIKit_Example
//
//  Created by liufan on 2019/7/24.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LFUIAdaptiveTool : NSObject

+ (instancetype)sharedInstance;

//是否是X系列手机
@property (nonatomic,assign,readonly) BOOL iPhoneX;
//X系列底部安全区
@property (nonatomic,assign,readonly) CGFloat BOTTOM_SAFE_HEIGHT;
//状态栏高度
@property (nonatomic,assign,readonly) CGFloat STATUS_HEIGHT;
//导航栏高度 兼容X系列手机
@property (nonatomic,assign,readonly) CGFloat NAV_HEIGHT;
//Tabbar高度 兼容X系列手机
@property (nonatomic,assign,readonly) CGFloat TABBAR_HEIGHT;

//导航栏高度 不兼容X系列手机
@property (nonatomic,assign,readonly) CGFloat ONLY_NAV_HEIGHT;
//Tabbar高度 不兼容X系列手机
@property (nonatomic,assign,readonly) CGFloat ONLY_TABBAR_HEIGHT;

//竖屏下 屏幕宽、高
@property (nonatomic,assign,readonly) CGFloat SCREEN_WIDTH;
@property (nonatomic,assign,readonly) CGFloat SCREEN_HEIGHT;

//默认安全区域
@property (nonatomic,assign,readonly) CGFloat SAFE_AREA_HEIGHT;

@end


NS_ASSUME_NONNULL_END
