//
//  ViewController.h
//  InputViewController
//
//  Created by pronebird on 11/26/15.
//  Copyright © 2015 pronebird. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TextField;

@interface ViewController : UIViewController

@property (nonatomic) IBOutlet TextField *textField;
@property (nonatomic) IBOutlet UIToolbar *accessoryToolbar;

@end

