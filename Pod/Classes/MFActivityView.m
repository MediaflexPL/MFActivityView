//
//  MFActivityView.m
//
//  Created by Jakub Darowski on 08.10.2015.
//  Copyright © 2015 Mediaflex Sp. z o. o. All rights reserved.
//

#import "MFActivityView.h"

static NSTimeInterval animationDuration = 0.2f;

@implementation MFActivityView


+(void) setViewAnimationDuration: (NSTimeInterval) duration {
    animationDuration = duration;
}

- (void)animateShow;
{
    self.alpha = 0.0;
    self.borderView.transform = CGAffineTransformMakeScale(3.0, 3.0);
    
    [UIView beginAnimations:nil context:nil];
    
    if (animationDuration > 0.0f ) {
        [UIView setAnimationDuration:animationDuration];
    }
    self.borderView.transform = CGAffineTransformIdentity;
    self.alpha = 1.0;
    
    [UIView commitAnimations];
}

- (void)animateRemove;
{
    if (self.showNetworkActivityIndicator)
        [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    
    self.borderView.transform = CGAffineTransformIdentity;
    
    [UIView beginAnimations:nil context:nil];
    if (animationDuration > 0.0f ) {
        [UIView setAnimationDuration:animationDuration];
    }
    [UIView setAnimationDelegate:(DejalBezelActivityView*) self];
    [UIView setAnimationDidStopSelector:@selector(removeAnimationDidStop:finished:context:)];
    
    self.borderView.transform = CGAffineTransformMakeScale(0.5, 0.5);
    self.alpha = 0.0;
    
    [UIView commitAnimations];
}

-(void)removeAnimationDidStop:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context {
    [[self class] removeView];
}

@end
