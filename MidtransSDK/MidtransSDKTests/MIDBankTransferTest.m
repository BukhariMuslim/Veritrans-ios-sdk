//
//  MIDBankTransferTest.m
//  MidtransSDKTests
//
//  Created by Nanang Rafsanjani on 05/12/18.
//  Copyright © 2018 Midtrans. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MIDTestHelper.h"

@interface MIDBankTransferTest : XCTestCase

@end

@implementation MIDBankTransferTest

static NSString *_email = @"jukiginanjar@yahoo.com";

- (void)setUp {
    [MIDTestHelper setup];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testForBCA {
    XCTestExpectation *promise = [XCTestExpectation new];
    
    [self getTokenWithCompletion:^(NSString * _Nullable token, NSError * _Nullable error) {
        [MIDBankTransferCharge bcaWithToken:token
                                      email:_email
                                 completion:^(MIDBCABankTransferResult * _Nullable result, NSError * _Nullable error)
         {
             XCTAssertNotNil(result.vaNumber, @"va bca test is error");
             [promise fulfill];
         }];
    }];
    
    [self waitForExpectations:@[promise] timeout:120];
}

- (void)testTokenNotFoundBCA {
    XCTestExpectation *promise = [XCTestExpectation new];
    
    [MIDBankTransferCharge bcaWithToken:nil
                                  email:_email
                             completion:^(MIDBCABankTransferResult * _Nullable result, NSError * _Nullable error)
     {
         XCTAssertTrue(error.code == 404);
         [promise fulfill];
     }];
    
    [self waitForExpectations:@[promise] timeout:120];
}

- (void)testTokenErrorBCA {
    XCTestExpectation *promise = [XCTestExpectation new];
    
    [MIDBankTransferCharge bcaWithToken:@"random_token_error"
                                  email:_email
                             completion:^(MIDBCABankTransferResult * _Nullable result, NSError * _Nullable error)
     {
         XCTAssertTrue(error.code == 404);
         [promise fulfill];
     }];
    
    [self waitForExpectations:@[promise] timeout:120];
}

- (void)testForPermata {
    XCTestExpectation *promise = [XCTestExpectation new];
    
    [self getTokenWithCompletion:^(NSString * _Nullable token, NSError * _Nullable error) {
        [MIDBankTransferCharge permataWithToken:token email:_email completion:^(MIDPermataBankTransferResult * _Nullable result, NSError * _Nullable error) {
            XCTAssertNotNil(result.vaNumber, @"va permata test is error");
            [promise fulfill];
        }];
    }];
    
    [self waitForExpectations:@[promise] timeout:120];
}


- (void)testForMandiri {
    XCTestExpectation *promise = [XCTestExpectation new];
    
    [self getTokenWithCompletion:^(NSString * _Nullable token, NSError * _Nullable error) {
        [MIDBankTransferCharge mandiriWithToken:token email:_email completion:^(MIDMandiriBankTransferResult * _Nullable result, NSError * _Nullable error) {
            XCTAssertNotNil(result.code, @"va mandiri test is error");
            [promise fulfill];
        }];
    }];
    
    [self waitForExpectations:@[promise] timeout:120];
}

- (void)getTokenWithCompletion:(void (^_Nullable) (NSString *_Nullable token, NSError *_Nullable error))completion {
    MIDCheckoutTransaction *trx = [MIDCheckoutTransaction modelWithOrderID:[MIDTestHelper orderID]
                                                               grossAmount:@1000
                                                                  currency:MIDCurrencyIDR];
    
    [MIDClient checkoutWith:trx options:nil completion:^(MIDToken * _Nullable token, NSError * _Nullable error) {
        NSString *_token = token.token;
        XCTAssertNotNil(_token);        
        completion(_token, error);
    }];

}

@end