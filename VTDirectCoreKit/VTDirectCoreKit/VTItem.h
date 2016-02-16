//
//  VTItem.h
//  VTDirectCoreKit
//
//  Created by Nanang Rafsanjani on 2/16/16.
//  Copyright © 2016 Veritrans. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VTItem : NSObject

@property(nonatomic, readonly) NSString* itemId;
@property(nonatomic, readonly) NSInteger price;
@property(nonatomic, readonly) NSInteger quantity;
@property(nonatomic, readonly) NSString* name;

@end
