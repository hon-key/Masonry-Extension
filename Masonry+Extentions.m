//
//  MASConstraintMaker+Extentions.m
//  ShouYinTong
//
//  Created by Ruite Chen on 2018/12/5.
//  Copyright © 2018 乐刷. All rights reserved.
//

#import "Masonry+Extentions.h"

@interface EMASConstraintMaker ()
@property (nonatomic,strong) MASConstraintMaker *maker;
@property (nonatomic,strong) MAS_VIEW *obj;
@end

@implementation EMASConstraintMaker


- (EMASConstraintMaker *(^)(CGFloat))top {
    return ^EMASConstraintMaker * (CGFloat value) {
        self.maker.top.equalTo(self.obj).with.offset(value);
        return self;
    };
}

- (EMASConstraintMaker *(^)(CGFloat))topToBottom {
    return ^EMASConstraintMaker * (CGFloat value) {
        self.maker.top.equalTo(self.obj.mas_bottom).with.offset(value);
        return self;
    };
}

- (EMASConstraintMaker *(^)(CGFloat))topToCenterY {
    return ^EMASConstraintMaker * (CGFloat value) {
        self.maker.top.equalTo(self.obj.mas_centerY).with.offset(value);
        return self;
    };
}

- (EMASConstraintMaker *(^)(CGFloat))bottom {
    return ^EMASConstraintMaker * (CGFloat value) {
        self.maker.bottom.equalTo(self.obj).with.offset(-value);
        return self;
    };
}

- (EMASConstraintMaker *(^)(CGFloat))bottomToTop {
    return ^EMASConstraintMaker * (CGFloat value) {
        self.maker.bottom.equalTo(self.obj.mas_top).with.offset(-value);
        return self;
    };
}

- (EMASConstraintMaker *(^)(CGFloat))bottomToCenterY {
    return ^EMASConstraintMaker * (CGFloat value) {
        self.maker.bottom.equalTo(self.obj.mas_centerY).with.offset(-value);
        return self;
    };
}

- (EMASConstraintMaker *(^)(CGFloat))left {
    return ^EMASConstraintMaker * (CGFloat value) {
        self.maker.left.equalTo(self.obj).with.offset(value);
        return self;
    };
}

- (EMASConstraintMaker *(^)(CGFloat))leftToRight {
    return ^EMASConstraintMaker * (CGFloat value) {
        self.maker.left.equalTo(self.obj.mas_right).with.offset(value);
        return self;
    };
}

- (EMASConstraintMaker *(^)(CGFloat))leftToCenterX {
    return ^EMASConstraintMaker * (CGFloat value) {
        self.maker.left.equalTo(self.obj.mas_centerX).with.offset(value);
        return self;
    };
}

- (EMASConstraintMaker *(^)(CGFloat))right {
    return ^EMASConstraintMaker * (CGFloat value) {
        self.maker.right.equalTo(self.obj).with.offset(-value);
        return self;
    };
}

- (EMASConstraintMaker *(^)(CGFloat))rightToLeft {
    return ^EMASConstraintMaker * (CGFloat value) {
        self.maker.right.equalTo(self.obj.mas_left).with.offset(-value);
        return self;
    };
}

- (EMASConstraintMaker *(^)(CGFloat))rightToCenterX {
    return ^EMASConstraintMaker * (CGFloat value) {
        self.maker.right.equalTo(self.obj.mas_centerX).with.offset(-value);
        return self;
    };
}

- (EMASConstraintMaker *(^)(CGFloat))centerY {
    return ^EMASConstraintMaker * (CGFloat value) {
        self.maker.centerY.equalTo(self.obj).with.offset(value);
        return self;
    };
}

- (EMASConstraintMaker *(^)(CGFloat))centerX {
    return ^EMASConstraintMaker * (CGFloat value) {
        self.maker.centerX.equalTo(self.obj).with.offset(value);
        return self;
    };
}

@end

@implementation MASConstraintMaker (Extentions)
- (EMASConstraintMaker *(^)(id))to {
    return ^EMASConstraintMaker * (id obj) {
        EMASConstraintMaker *emaker = [EMASConstraintMaker new];
        emaker.maker = self;
        emaker.obj = obj;
        return emaker;
    };
}

@end



