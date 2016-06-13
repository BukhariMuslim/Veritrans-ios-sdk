//
//  VTPaymentCIMBClicks.m
//  MidtransCoreKit
//
//  Created by Nanang Rafsanjani on 6/13/16.
//  Copyright © 2016 Veritrans. All rights reserved.
//

#import "VTPaymentCIMBClicks.h"

@interface VTPaymentCIMBClicks()
@property (nonatomic) NSString *cimbClicksCescription;
@end

@implementation VTPaymentCIMBClicks

- (instancetype)initWithDescription:(NSString *)description {
    if (self = [super init]) {
        self.cimbClicksCescription = description;
    }
    return self;
}

- (NSString *)paymentType {
    return @"cimb_clicks";
}

- (NSDictionary *)dictionaryValue {
    return @{@"description":_cimbClicksCescription};
}

@end
