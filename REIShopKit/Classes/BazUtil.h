//
//  BazUtil.h
//  REIShopKit
//
//  Created by chris1 on 7/23/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BazUtil : NSObject

//- (void) instanceMethod;
//+ (void) classMethod;

+ (void) setupNewRelic;
+ (void) dispatchNewRelicAnalytics;

+ (void) configureAdobe;
+ (void) diespatchAdobeAnalytics;

@end

NS_ASSUME_NONNULL_END
