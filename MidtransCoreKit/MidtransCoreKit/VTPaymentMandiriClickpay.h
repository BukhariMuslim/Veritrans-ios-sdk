//
//  VTPaymentMandiriClickpay.h
//  MidtransCoreKit
//
//  Created by Nanang Rafsanjani on 6/14/16.
//  Copyright © 2016 Veritrans. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VTPaymentDetails.h"
#import "VTMandiriClickpayHelper.h"

@interface VTPaymentMandiriClickpay : NSObject <VTPaymentDetails>
- (instancetype _Nonnull)initWithCardNumber:(NSString *_Nonnull)cardNumber clickpayToken:(NSString *_Nonnull)clickpayToken token:(TransactionTokenResponse *_Nonnull)token;
@end
