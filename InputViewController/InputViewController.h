//
//  InputViewController.h
//  InputViewController
//
//  Created by pronebird on 11/26/15.
//  Copyright © 2015 pronebird. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InputViewController : UIInputViewController

@property (nonatomic, copy) void(^didChangeDate)(NSDate *date);

@end
