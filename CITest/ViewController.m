//
//  ViewController.m
//  CITest
//
//  Created by yyq on 2018/4/27.
//  Copyright © 2018年 mobilenowgroup. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *countLB;
@property (assign,nonatomic)int count;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.count = 0;
}
- (void)setCount:(int)count{
    _count = count;
    self.countLB.text = [NSString stringWithFormat:@"%d",_count];
}

- (IBAction)addBtnClick:(UIButton *)sender {
    self.count++;
}
- (IBAction)crashBtnClick:(UIButton *)sender {
    NSAssert(0, @"crash");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
