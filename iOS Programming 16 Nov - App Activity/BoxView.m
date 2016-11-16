//
//  BoxView.m
//  iOS Programming 16 Nov - App Activity
//
//  Created by Jeremia Muhia on 11/16/16.
//  Copyright © 2016 NYU. All rights reserved.
//

#import "BoxView.h"

@implementation BoxView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (id<CAAction>) actionForLayer:(CALayer *)layer forKey:(NSString *)event {
    
    id<CAAction> animation = [CABasicAnimation animation];
    
    ((CAAnimation *) animation).duration = 0.75f;
    
    return animation;
}

@end
