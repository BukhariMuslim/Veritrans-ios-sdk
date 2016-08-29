//
//  VTPaymentKiosOn.h
//  MidtransCoreKit
//
//  Created by Nanang Rafsanjani on 8/29/16.
//  Copyright © 2016 Veritrans. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VTPaymentDetails.h"

@interface VTPaymentKiosOn : NSObject <VTPaymentDetails>

- (instancetype _Nonnull)initWithToken:(TransactionTokenResponse *_Nonnull)token;

@end
