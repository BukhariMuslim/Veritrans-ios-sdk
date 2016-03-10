//
//  VTCTransactionData.h
//  MidtransCoreKit
//
//  Created by Akbar Taufiq Herlangga on 3/3/16.
//  Copyright © 2016 Veritrans. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "VTCPaymentDetails.h"
#import "VTCTransactionDetails.h"
#import "VTCustomerDetails.h"
#import "VTItem.h"

/**
 VTCTransactionData contains all the data needed to do a transaction.
 */
@interface VTCTransactionData : NSObject

@property (nonatomic, readonly) id<VTCPaymentDetails> paymentDetails;
@property (nonatomic, readonly) VTCTransactionDetails *transactionDetails;
@property (nonatomic, readonly) VTCustomerDetails *customerDetails;
@property (nonatomic, readonly) NSArray<VTItem*> *itemDetails;

- (instancetype)initWithpaymentDetails:(id<VTCPaymentDetails>)paymentDetails
                    transactionDetails:(VTCTransactionDetails *)transactionDetails
                       customerDetails:(VTCustomerDetails *)customerDetails
                           itemDetails:(NSArray<VTItem*> *)itemDetails;

- (NSDictionary *)dictionaryValue;

@end
