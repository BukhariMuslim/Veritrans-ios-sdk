//
//  VTPaymentCIMBClicks.h
//  MidtransCoreKit
//
//  Created by Nanang Rafsanjani on 6/13/16.
//  Copyright © 2016 Veritrans. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VTPaymentDetails.h"

@interface VTPaymentCIMBClicks : NSObject <VTPaymentDetails>
- (instancetype _Nonnull)initWithToken:(TransactionTokenResponse * _Nonnull)token;
@end
