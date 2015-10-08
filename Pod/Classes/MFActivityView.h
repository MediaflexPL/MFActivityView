//
//  MFActivityView.h
//
//  Created by Jakub Darowski on 08.10.2015.
//  Copyright © 2015 Mediaflex Sp. z o. o. All rights reserved.
//

#import "DejalActivityView.h"

/**
 *  @author Jakub Darowski
 *
 *  A small addition to the DejalBezelActivityView which enables the developer to customise the animation duration.
 */
@interface MFActivityView : DejalBezelActivityView

/**
 *  @author Jakub Darowski
 *
 *  Changes the animation duration for all MFActivityViews.
 *
 *  @param duration Animation duration in seconds
 */
+(void) setViewAnimationDuration: (NSTimeInterval) duration;

/**
 *  @author Jakub Darowski
 *
 *  Removes the view when its remove animation has ended
 */
- (void)removeAnimationDidStop:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context;


@end
