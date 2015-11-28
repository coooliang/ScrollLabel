//
//  ScrollLabel.h
//  ScrollLabel
//
//  Created by coooliang on 11/23/15.
//  Copyright © 2015 coooliang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScrollLabel : UIScrollView

@property(nonatomic,assign)CGFloat duration;
@property(nonatomic,assign)CGFloat delay;

-(void)setTextColor:(UIColor *)color;

-(void)setText:(NSString *)text;

-(void)setFont:(UIFont *)font;

-(void)scroll;

-(void)start;

@end
