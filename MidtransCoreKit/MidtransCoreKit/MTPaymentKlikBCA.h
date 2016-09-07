//
//  VTPaymentKlikBCA.h
//  MidtransCoreKit
//
//  Created by Arie on 6/16/16.
//  Copyright © 2016 Veritrans. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MTPaymentDetails.h"
@interface MTPaymentKlikBCA : NSObject<MTPaymentDetails>
- (instancetype _Nonnull)initWithKlikBCAUserId:(NSString * _Nonnull)userId token:(MTTransactionTokenResponse *_Nonnull)token;
@end
