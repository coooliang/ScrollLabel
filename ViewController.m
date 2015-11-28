//
//  ViewController.m
//  ScrollLabel
//
//  Created by coooliang on 11/23/15.
//  Copyright © 2015 coooliang. All rights reserved.
//

#import "ViewController.h"
#import "ScrollLabel.h"

@interface ViewController ()

@end

@implementation ViewController


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    //[s1 scroll];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    ScrollLabel *sl = [[ScrollLabel alloc]initWithFrame:CGRectMake(20, 60, 200, 30)];
    sl.backgroundColor = [UIColor yellowColor];
    sl.text = @"一地在要工上是中国同和的有人我主产为为这民了发以经！一地在要工上是中国同和的有人我主产为为这民了发以经！！一地在要工上是中国同和的有人我主产为为这民了发以经！！！";
    
    sl.font = [UIFont systemFontOfSize:12];
    sl.textColor = [UIColor blackColor];
    
    [self.view addSubview:sl];
    
    [sl start];
    
    
    ScrollLabel *sl2 = [[ScrollLabel alloc]initWithFrame:CGRectMake(0, 120, 320, 30)];
    sl2.backgroundColor = [UIColor yellowColor];
    sl2.duration = 10;
    sl2.text = @"一地在要工上是中国同和的有人我主产为为这民了发以经！一地在要工上是中国同和的有人我主产为为这民了发以经！！一地在要工上是中国同和的有人我主产为为这民了发以经！！！";
    [self.view addSubview:sl2];
    
    [sl2 start];
    
    
    ScrollLabel *sl3 = [[ScrollLabel alloc]initWithFrame:CGRectMake(10, 180, 300, 30)];
    sl3.backgroundColor = [UIColor yellowColor];
    sl3.duration = 5;
    sl3.delay = 2;
    sl3.text = @"一地在要工上是中国同";
    [self.view addSubview:sl3];
    
    [sl3 start];
}


@end
