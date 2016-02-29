//
//  VTPaymentViewController.h
//  MidtransKit
//
//  Created by Nanang Rafsanjani on 2/25/16.
//  Copyright © 2016 Veritrans. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MidtransCoreKit/VTItem.h>

@interface VTPaymentViewController : UINavigationController

+ (instancetype)paymentWithItems:(NSArray <VTItem *> *)items;

@end
