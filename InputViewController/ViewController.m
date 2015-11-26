//
//  ViewController.m
//  InputViewController
//
//  Created by pronebird on 11/26/15.
//  Copyright © 2015 pronebird. All rights reserved.
//

#import "ViewController.h"
#import "InputViewController.h"

@interface TextField: UITextField

@property (nonatomic, readwrite, strong) UIInputViewController *inputViewController;

@end

@implementation TextField
@end


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    InputViewController *inputController = [[InputViewController alloc] init];
    inputController.didChangeDate = ^(NSDate *date) {
        self.textField.text = [NSDateFormatter localizedStringFromDate:date dateStyle:NSDateFormatterMediumStyle timeStyle:NSDateFormatterNoStyle];
    };
    
    self.textField.inputAccessoryView = self.accessoryToolbar;
    self.textField.inputViewController = inputController;
    
}

- (IBAction)dismissKeyboard:(id)sender {
    [self.textField resignFirstResponder];
}

@end
