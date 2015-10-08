//
//  MFViewController.h
//  MFActivityView
//
//  Created by Jakub Darowski on 10/08/2015.
//  Copyright (c) 2015 Mediaflex Sp. z o. o.. All rights reserved.
//

@import UIKit;

@interface MFViewController : UIViewController {
    NSString *message;
    NSTimeInterval duration;
    NSTimeInterval lifetime;
    NSTimer *timer;
}
@property (weak, nonatomic) IBOutlet UITextField *messageField;
@property (weak, nonatomic) IBOutlet UISlider *durationSlider;
@property (weak, nonatomic) IBOutlet UILabel *durationLabel;
@property (weak, nonatomic) IBOutlet UISlider *lifetimeSlider;
@property (weak, nonatomic) IBOutlet UILabel *lifetimeLabel;
- (IBAction)lifetimeChanged:(id)sender;
- (IBAction)durationChanged:(id)sender;
- (IBAction)messageChanged:(id)sender;
- (IBAction)showView:(id)sender;

@end
