//
//  MFViewController.m
//  MFActivityView
//
//  Created by Jakub Darowski on 10/08/2015.
//  Copyright (c) 2015 Jakub Darowski. All rights reserved.
//

#import "MFViewController.h"
#import "MFActivityView.h"


@interface MFViewController ()

@end

@implementation MFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	message = @"";
    lifetime = 2.0;
    duration = 0.2;
    
    [self.lifetimeSlider setValue:lifetime * 10.0f];
    [self.durationSlider setValue:duration * 10.0f];
    
    
    self.lifetimeLabel.text = [NSString stringWithFormat:@"%.1lf", lifetime];
    self.durationLabel.text = [NSString stringWithFormat:@"%.1lf", duration];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)lifetimeChanged:(id)sender {
    lifetime = (NSTimeInterval)[(UISlider*)sender value] / 10.0f;
    self.lifetimeLabel.text = [NSString stringWithFormat:@"%.1lf", lifetime];
    
    if (lifetime < duration) {
        [self.durationSlider setValue:lifetime*10.0f animated:YES];
        [self durationChanged:sender];
    }
}

- (IBAction)durationChanged:(id)sender {
    duration = (NSTimeInterval)[(UISlider*)sender value] / 10.0f;
    self.durationLabel.text = [NSString stringWithFormat:@"%.1lf", duration];
    if (duration > lifetime) {
        [self.lifetimeSlider setValue:duration*10.0f animated:YES];
        [self lifetimeChanged:sender];
    }
}

- (IBAction)messageChanged:(id)sender {
    message = [(UITextField*)sender text];
}

- (IBAction)showView:(id)sender {
    [self.view endEditing:YES];
    [MFActivityView setViewAnimationDuration:duration];
    [MFActivityView activityViewForView:self.view withLabel:message];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:lifetime target:self selector:@selector(removeView) userInfo:nil repeats:NO];
}

-(void) removeView {
    [MFActivityView removeViewAnimated:YES];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

@end
