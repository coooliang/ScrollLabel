# ScrollLabel
ScrollLabel
这是一个跑马灯效果的UIView,如果你在UIViewController中使用的话需要在viewWillApper中调用一下scroll方法；
如果这个UIViewController是应用的首页最好在
- (void)applicationWillEnterForeground:(UIApplication *)application 方法中再次激活滚动功能，调用scroll方法
以下是使用方法：
    

    ScrollLabel *sl = [[ScrollLabel alloc]initWithFrame:CGRectMake(20, 60, 200, 30)];
    sl.backgroundColor = [UIColor yellowColor];
    sl.text = @"一地在要工上是中国同和的有人我主产为为这民了发以经！";
    
    sl.font = [UIFont systemFontOfSize:12];
    sl.textColor = [UIColor blackColor];
    
    [self.view addSubview:sl];
    
    [sl start];
    
    
    ScrollLabel *sl2 = [[ScrollLabel alloc]initWithFrame:CGRectMake(0, 120, 320, 30)];
    sl2.backgroundColor = [UIColor yellowColor];
    sl2.duration = 10;
    sl2.text = @"一地在要工上是中国同和的有人我主产为为这民了发以经！";
    [self.view addSubview:sl2];
    
    [sl2 start];
    
    
    ScrollLabel *sl3 = [[ScrollLabel alloc]initWithFrame:CGRectMake(10, 180, 300, 30)];
    sl3.backgroundColor = [UIColor yellowColor];
    sl3.duration = 5;
    sl3.delay = 2;
    sl3.text = @"一地在要工上是中国同";
    [self.view addSubview:sl3];
    
    [sl3 start];
    
    
    
