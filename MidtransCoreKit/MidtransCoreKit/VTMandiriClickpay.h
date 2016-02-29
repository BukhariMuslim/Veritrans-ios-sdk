//
//  VTMandiriClickpay.h
//  MidtransCoreKit
//
//  Created by Nanang Rafsanjani on 2/26/16.
//  Copyright © 2016 Veritrans. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VTMandiriClickpay : NSObject

@property (nonatomic, readonly) NSString *debitNumber;
@property (nonatomic, readonly) NSString *token;
@property (nonatomic, readonly) NSString *input1;
@property (nonatomic, readonly) NSString *input2;
@property (nonatomic, readonly) NSString *input3;

+ (instancetype)dataWithDebitNumber:(NSString *)debitNumber token:(NSString *)token transactionAmount:(NSNumber *)transactionAmount;

- (NSDictionary *)requestData;

@end
