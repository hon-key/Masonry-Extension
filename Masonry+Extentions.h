//  MASConstraintMaker+Extentions.h
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

#import <Masonry.h>

@interface EMASConstraintMaker : NSObject

- (EMASConstraintMaker * (^)(CGFloat))top;
- (EMASConstraintMaker * (^)(CGFloat))topToBottom;
- (EMASConstraintMaker * (^)(CGFloat))topToCenterY;
- (EMASConstraintMaker * (^)(CGFloat))bottom;
- (EMASConstraintMaker * (^)(CGFloat))bottomToTop;
- (EMASConstraintMaker * (^)(CGFloat))bottomToCenterY;
- (EMASConstraintMaker * (^)(CGFloat))left;
- (EMASConstraintMaker * (^)(CGFloat))leftToRight;
- (EMASConstraintMaker * (^)(CGFloat))leftToCenterX;
- (EMASConstraintMaker * (^)(CGFloat))right;
- (EMASConstraintMaker * (^)(CGFloat))rightToLeft;
- (EMASConstraintMaker * (^)(CGFloat))rightToCenterX;
- (EMASConstraintMaker * (^)(CGFloat))centerX;
- (EMASConstraintMaker * (^)(CGFloat))centerY;
@end


@interface MASConstraintMaker (Extentions)
- (EMASConstraintMaker * (^)(id))to;
@end




