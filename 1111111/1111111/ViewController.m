//
//  ViewController.m
//  1111111
//
//  Created by young_jerry on 2020/9/5.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "ViewController.h"
#import "RegisnViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"
#import "FifthViewController.h"

@interface ViewController ()<Delegate>
@property UITextField *textField1;
@property UITextField *textField2;
@property UIButton *button1;
@property UIButton *button2;
@property NSInteger flag;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    _textField1 = [[UITextField alloc]init];
    _textField2 = [[UITextField alloc]init];
    
    _textField1.frame = CGRectMake(100, 300, 200, 30);
    _textField2.frame = CGRectMake(100, 340, 200, 30);
    _textField1.layer.borderWidth = 2;
    _textField2.layer.borderWidth = 2;
    
    _textField1.tintColor = [UIColor blackColor];
    _textField2.tintColor = [UIColor blackColor];
    
    _textField1.placeholder = @"请输入账号";
    _textField2.placeholder = @"请输入密码";
    
    _button1 = [[UIButton alloc]init];
    _button2 = [[UIButton alloc]init];
    
    _button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    [_button1 setTitle:@"登陆" forState:UIControlStateNormal];
    [_button2 setTitle:@"注册" forState:UIControlStateNormal];
    
    _button1.titleLabel.font = [UIFont systemFontOfSize:20];
        _button2.titleLabel.font = [UIFont systemFontOfSize:20];
    
    [_button1 addTarget:self action:@selector(pressLogin) forControlEvents:UIControlEventTouchUpInside];
    [_button2 addTarget:self action:@selector(pressResign) forControlEvents:UIControlEventTouchUpInside];
    
    _button1.frame = CGRectMake(130, 400, 50, 50);
    _button2.frame = CGRectMake(210, 400, 50, 50);
    
    
    [self.view addSubview:_button1];
    [self.view addSubview:_button2];
    [self.view addSubview:_textField1];
    [self.view addSubview:_textField2];
     [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillAppear:) name:UIKeyboardWillShowNotification object:nil];

          [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillDisAppear:) name:UIKeyboardWillHideNotification object:nil];
    }
    //收键盘
    - (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
        [self.view endEditing:YES];
    }

    // 键盘出现 视图上移事件
    - (void)keyboardWillDisAppear:(NSNotification *)notification{
        [UIView animateWithDuration:1 animations:^{self.view.transform = CGAffineTransformMakeTranslation(0, 0);}];
    }

    - (void)keyboardWillAppear:(NSNotification *)notification{

        [UIView animateWithDuration:1 animations:^{self.view.transform = CGAffineTransformMakeTranslation(0, - 40);}];
    
}
-(void)put:(NSString *)str1 and:(NSString *)str2{
    _flag = 1;
    _textField1.text = str1;
    _textField2.text = str2;
}

-(void)pressLogin{
    if(([_textField1.text isEqualToString:@"iOSnb123"] && [_textField2.text isEqualToString:@"123456789"] ) || _flag == 1){
        
        FirstViewController* First = [[FirstViewController alloc]init];
        SecondViewController* Second = [[SecondViewController alloc]init];
        ThirdViewController* Third = [[ThirdViewController alloc]init];
        FourthViewController* Fourth = [[FourthViewController alloc]init];
        FifthViewController* Fifth = [[FifthViewController alloc]init];
        
        First.title = @"1";
        Second.title = @"2";
        Third.title = @"3";
        Fourth.title = @"4";
        Fifth.title = @"5";
        
    UINavigationController *a1 = [[UINavigationController alloc] initWithRootViewController:First];

    UINavigationController *a2 = [[UINavigationController alloc] initWithRootViewController:Second];

    UINavigationController *a3 = [[UINavigationController alloc] initWithRootViewController:Third];

    UINavigationController *a4 = [[UINavigationController alloc] initWithRootViewController:Fourth];

    UINavigationController *a5 = [[UINavigationController alloc] initWithRootViewController:Fifth];
        
        NSArray *array = [NSArray arrayWithObjects:a1,a2,a3,a4,a5,nil];

        UITabBarController *tbController = [[UITabBarController alloc]init];

        tbController.viewControllers = array;

        self.view.window.rootViewController = tbController;
    }
}

-(void)pressResign{
   RegisnViewController *regisnviewController = [[RegisnViewController alloc] init];
          regisnviewController.delegate = self;
          [self presentViewController:regisnviewController animated:YES completion:nil];
}
@end
