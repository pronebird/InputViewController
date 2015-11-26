//
//  InputViewController.m
//  InputViewController
//
//  Created by pronebird on 11/26/15.
//  Copyright © 2015 pronebird. All rights reserved.
//

#import "InputViewController.h"

@interface InputViewController ()

@property (nonatomic) UIDatePicker *datePicker;

@end

@implementation InputViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
     Otherwise everything will collapse...
     */
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
    self.view.backgroundColor = [UIColor whiteColor];
    
    /*
     Setup date picker
     */
    self.datePicker = [[UIDatePicker alloc] init];
    self.datePicker.datePickerMode = UIDatePickerModeDate;
    self.datePicker.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.datePicker addTarget:self action:@selector(valueChanged:) forControlEvents:UIControlEventValueChanged];
    
    /*
     Add subviews
     */
    [self.view addSubview:self.datePicker];
    
    /*
     Add constraints
     */
    [self.datePicker.leadingAnchor constraintEqualToAnchor:self.inputView.leadingAnchor].active = YES;
    [self.datePicker.trailingAnchor constraintEqualToAnchor:self.inputView.trailingAnchor].active = YES;
    [self.datePicker.topAnchor constraintEqualToAnchor:self.inputView.topAnchor].active = YES;
    [self.datePicker.bottomAnchor constraintEqualToAnchor:self.inputView.bottomAnchor].active = YES;
}

- (void)valueChanged:(id)sender {
    if(self.didChangeDate) {
        self.didChangeDate(self.datePicker.date);
    }
}

@end
