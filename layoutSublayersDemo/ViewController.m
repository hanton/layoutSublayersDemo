//
//  ViewController.m
//  layoutSublayersDemo
//
//  Created by  on 1/12/15.
//  Copyright (c) 2015 Hanton. All rights reserved.
//

#import "ViewController.h"
#import "DAAttributedLabel.h"
#import "DAAttributedStringFormatter.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet DAAttributedLabel *attributedLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
  DAAttributedStringFormatter* formatter = [[DAAttributedStringFormatter alloc] init];
  formatter.fontFamilies = @[ @"Courier", @"Arial" ];
  formatter.colors = @[ [UIColor redColor], [UIColor blueColor] ];
  NSAttributedString* attrStr = [formatter formatString:@"%0C%0FRed Courier Text %1C%1FBlue Arial Text %0CRed Arial Text%0C%0FRed Courier Text %1C%1FBlue Arial Text %0CRed Arial Text"];
  self.attributedLabel.text = attrStr;
//  self.attributedLabel.delegate = self;
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
