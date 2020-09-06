//
//  RegisnViewController.m
//  1111111
//
//  Created by young_jerry on 2020/9/5.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "RegisnViewController.h"

@interface RegisnViewController ()<UITextFieldDelegate>

@end

@implementation RegisnViewController

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
    //    _textField1.backgroundColor = [UIColor yellowColor];
    //    _textField2.backgroundColor = [UIColor yellowColor];
        
        _button1 = [[UIButton alloc]init];
        
        _button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        
        [_button1 setTitle:@"登陆" forState:UIControlStateNormal];
        
        _button1.titleLabel.font = [UIFont systemFontOfSize:20];
        
        [_button1 addTarget:self action:@selector(press) forControlEvents:UIControlEventTouchUpInside];
        
        _button1.frame = CGRectMake(160, 400, 50, 50);
        
        
        [self.view addSubview:_button1];
        [self.view addSubview:_textField1];
        [self.view addSubview:_textField2];
   
    
    _textField1.delegate = self;
    _textField2.delegate = self;
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
-(void)press{
    [self.delegate put:_textField1.text and:_textField2.text];
    [self dismissViewControllerAnimated:NO completion:nil];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
