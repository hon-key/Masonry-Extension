//  MASConstraintMaker+Extentions.m
//  Copyright (c) 2018 HJ-Cai
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

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



