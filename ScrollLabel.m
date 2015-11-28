//
//  ScrollLabel.m
//  ScrollLabel
//
//  Created by coooliang on 11/23/15.
//  Copyright © 2015 coooliang. All rights reserved.
//

#import "ScrollLabel.h"

@implementation ScrollLabel{
    UILabel *_label;
    UILabel *_label2;
    CGFloat _defaultDuration;
}

-(id)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        _defaultDuration = 0;
        self.backgroundColor = [UIColor clearColor];
        _label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        _label.backgroundColor = [UIColor clearColor];
        _label.textAlignment = NSTextAlignmentLeft;
        [self addSubview:_label];
        
    }
    return self;
}

-(void)setTextColor:(UIColor *)color{
    _label.textColor = color;
}

-(void)setText:(NSString *)text{
    _label.text = text;
}

-(void)setFont:(UIFont *)font{
    _label.font = font;
}

-(void)copyLabel{
    //复制一个UIView
    _label2 = [NSKeyedUnarchiver unarchiveObjectWithData:[NSKeyedArchiver archivedDataWithRootObject:_label]];
    CGRect rect = _label2.frame;
    rect.origin.x = rect.size.width;
    _label2.frame = rect;
    [self addSubview:_label2];
}

-(void)start{
    CGSize size = _label.frame.size;
    if([[[UIDevice currentDevice]systemVersion]floatValue] <= 7.0){
        size = [_label.text sizeWithAttributes:[NSDictionary dictionaryWithObject:_label.font forKey:NSFontAttributeName]];
    }else{
        //最大10000
        CGRect rect = [_label.text boundingRectWithSize:CGSizeMake(0, 10000) options:NSStringDrawingUsesLineFragmentOrigin attributes:[NSDictionary dictionaryWithObject:_label.font forKey:NSFontAttributeName] context:nil];
        size = rect.size;
    }
    
    if(size.width < self.frame.size.width){
        size.width = self.frame.size.width;
    }
    
    _defaultDuration = size.width/50.0;//默认每秒50像素
    CGRect rect = _label.frame;
    rect.size.width = size.width;
    _label.frame = rect;
    
    [self copyLabel];
    [self scroll];
   
}

-(void)scroll{
    [UIView animateWithDuration:(self.duration == 0?_defaultDuration:self.duration) delay:self.delay options:UIViewAnimationOptionCurveLinear animations:^{
        CGRect temp = _label.frame;
        temp.origin.x = - _label.frame.size.width;
        _label.frame = temp;
        
        CGRect temp2 = _label2.frame;
        temp2.origin.x = _label2.frame.origin.x - _label2.frame.size.width;
        _label2.frame = temp2;
    } completion:^(BOOL finished) {
        CGRect temp = _label.frame;
        temp.origin.x = 0;
        _label.frame = temp;
        
        CGRect temp2 = _label2.frame;
        temp2.origin.x = _label.frame.size.width;
        _label2.frame = temp2;
        if(finished){//need, is very important
            [self scroll];
        }
        
    }];
}

@end
