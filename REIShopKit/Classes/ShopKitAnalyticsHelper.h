//
//  ShopKitAnalyticsHelper.h
//  REI
//
//  Created by chris1 on 7/24/19.
//  Copyright © 2019 REI. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ShopKitAnalyticsHelper : NSObject

+ (void)configureAdobeAnalytics:(NSString * _Nonnull)applicationId;
+ (void)configureNewRelicAnalytics:(NSString * _Nonnull)applicationToken;

@end

NS_ASSUME_NONNULL_END
