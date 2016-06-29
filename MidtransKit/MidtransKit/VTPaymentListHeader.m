//
//  VTPaymentListHeader.m
//  MidtransKit
//
//  Created by Nanang Rafsanjani on 5/30/16.
//  Copyright © 2016 Veritrans. All rights reserved.
//

#import "VTPaymentListHeader.h"
#import "VTThemeManager.h"

@interface VTPaymentListHeader()

@end

@implementation VTPaymentListHeader

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [[VTThemeManager shared] themeColor];
    }
    return self;
}

@end
