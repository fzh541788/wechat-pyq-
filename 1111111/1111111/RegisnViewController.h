//
//  RegisnViewController.h
//  1111111
//
//  Created by young_jerry on 2020/9/5.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol Delegate <NSObject>
-(void)put:(NSString *)str1 and:(NSString *)str2;
@end
NS_ASSUME_NONNULL_BEGIN

@interface RegisnViewController : UIViewController
@property UITextField *textField1;
@property UITextField *textField2;
@property UIButton *button1;
@property id<Delegate> delegate;
@end

NS_ASSUME_NONNULL_END


