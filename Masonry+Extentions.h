//
//  MASConstraintMaker+Extentions.h
//  ShouYinTong
//
//  Created by Ruite Chen on 2018/12/5.
//  Copyright © 2018 乐刷. All rights reserved.
//

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




