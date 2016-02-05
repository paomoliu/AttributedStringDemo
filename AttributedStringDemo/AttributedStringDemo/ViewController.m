//
//  ViewController.m
//  AttributedStringDemo
//
//  Created by paomoliu on 16/2/2.
//  Copyright © 2016年 Sunshine Girl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    NSString *labelString = @"2016，Happy New Year!";
//    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:labelString];
    
//    //设置富文本样式-文本空心，前景色此事无效
//    NSDictionary *attributes1 = @{NSFontAttributeName            : [UIFont boldSystemFontOfSize:25.f],  //设置文本字体
//                                  NSForegroundColorAttributeName : [UIColor redColor],                  //设置文本前景色
//                                  NSBackgroundColorAttributeName : [UIColor blueColor],                 //设置文本背景色
//                                  NSStrokeColorAttributeName     : [UIColor greenColor],                //设置画笔颜色
//                                  NSStrokeWidthAttributeName     : @6                                   //设置画笔宽度
//                                  };
//    
//    //设置富文本样式-将画笔宽度设为负值，前景色有效
//    NSDictionary *attributes2 = @{NSFontAttributeName            : [UIFont boldSystemFontOfSize:25.f],
//                                  NSForegroundColorAttributeName : [UIColor redColor],
//                                  NSBackgroundColorAttributeName : [UIColor blueColor],
//                                  NSStrokeColorAttributeName     : [UIColor greenColor],
//                                  NSStrokeWidthAttributeName     : @-6
//                                  };
//    
//    //设置富文本样式-文本倾斜度（正值右倾，负值左倾）
//    NSDictionary *attributes3 = @{NSFontAttributeName            : [UIFont boldSystemFontOfSize:25.f],
//                                  NSForegroundColorAttributeName : [UIColor redColor],
//                                  NSObliquenessAttributeName     : @-0.5
//                                  };
//
//    
//    //设置富文本样式-拉伸压缩文本(正值拉伸，负值压缩)
//    NSDictionary *attributes4 = @{NSFontAttributeName            : [UIFont boldSystemFontOfSize:25.f],
//                                  NSForegroundColorAttributeName : [UIColor redColor],
//                                  NSExpansionAttributeName       : @-1
//                                  };
    
    NSString *labelString = @"2016，Happy New Year!2016，Happy New Year!2016，Happy New Year!\n2016，Happy New Year!2016，Happy New Year!";
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:labelString];
    
    //设置富文本样式-段落样式
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
    style.lineSpacing = 10.f;           //行距
    style.paragraphSpacing = 20.f;      //段落间的间距
    
    NSDictionary *attributes5 = @{NSFontAttributeName            : [UIFont boldSystemFontOfSize:20.f],
                                  NSForegroundColorAttributeName : [UIColor redColor],
                                  NSParagraphStyleAttributeName  : style
                                  };
    
    NSRange range = NSMakeRange(0, labelString.length);
    
    [attributedString addAttributes:attributes5 range:range];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, 320, 300)];
    label.numberOfLines = 0;
    label.attributedText = attributedString;
    [self.view addSubview:label];
}

- (void)createAttrubutedStringOne
{
    NSString *labelString = @"2016，Happy New Year!";
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:labelString];
    
    //设置富文本样式
    [attributedString addAttribute:NSFontAttributeName                  //文本字体
                             value:[UIFont boldSystemFontOfSize:25.f]
                             range:NSMakeRange(0, 4)];
    
    [attributedString addAttribute:NSForegroundColorAttributeName       //文本前景色
                             value:[UIColor redColor]
                             range:NSMakeRange(0, 4)];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, 320, 50)];
    label.attributedText = attributedString;
    [self.view addSubview:label];
}

- (void)createAttributedStringTwo
{
    NSString *labelString = @"2016，Happy New Year!";
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:labelString];
    //设置富文本样式
    NSDictionary *attrubutes = @{NSFontAttributeName            : [UIFont boldSystemFontOfSize:25.f],
                                 NSForegroundColorAttributeName : [UIColor redColor]
                                 };
    
    NSRange range = NSMakeRange(0, 4);                          //富文本设置的范围
    
    [attributedString setAttributes:attrubutes range:range];
    
    //第一个label的富文本设置
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, 320, 50)];
    label.attributedText = attributedString;
    [self.view addSubview:label];
    
    NSMutableAttributedString *attributedString2 = [[NSMutableAttributedString alloc] initWithAttributedString:attributedString];
    
    //第二个label的富文本设置
    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 200, 320, 50)];
    label2.attributedText = attributedString2;
    [self.view addSubview:label2];
}

- (void)createAttibutedStringThree
{
    NSString *labelString = @"2016，Happy New Year!";
    //设置富文本样式
    NSDictionary *attrubutes = @{NSFontAttributeName            : [UIFont boldSystemFontOfSize:25.f],
                                 NSForegroundColorAttributeName : [UIColor redColor]
                                 };
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:labelString attributes:attrubutes];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, 320, 50)];
    label.attributedText = attributedString;
    [self.view addSubview:label];
}

@end
