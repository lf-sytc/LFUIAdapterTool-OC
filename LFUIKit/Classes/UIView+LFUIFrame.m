//
//  UIView+LFUIFrame.m
//  LFUIKit
//
//  Created by liufan on 2019/9/14.
//

#import "UIView+LFUIFrame.h"

@implementation UIView (LFUIFrame)

- (CGFloat)xLeft {
    return self.frame.origin.x;
}

- (void)setXLeft:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)xTop {
    return self.frame.origin.y;
}

- (void)setXTop:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)xRight {
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setXRight:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}

- (CGFloat)xBottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setXBottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}

- (CGFloat)xWidth {
    return self.frame.size.width;
}

- (void)setXWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)xHeight {
    return self.frame.size.height;
}

- (void)setXHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGPoint)xOrigin {
    return self.frame.origin;
}

- (void)setXOrigin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGSize)xSize {
    return self.frame.size;
}

- (void)setXSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

@end


