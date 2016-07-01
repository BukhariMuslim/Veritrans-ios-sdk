//
//  VTNextStepButton.m
//  MidtransKit
//
//  Created by Nanang Rafsanjani on 6/29/16.
//  Copyright © 2016 Veritrans. All rights reserved.
//

#import "VTNextStepButton.h"
#import "VTThemeManager.h"

@implementation VTNextStepButton

- (void)awakeFromNib {
    [super awakeFromNib];    
    [self setBackgroundColor:[[VTThemeManager shared] themeColor]];
}
@end
