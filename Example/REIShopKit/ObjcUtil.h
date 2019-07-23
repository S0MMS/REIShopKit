//
//  ObjcUtil.h
//  REIShopKit_Example
//
//  Created by chris1 on 7/23/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ObjcUtil : NSObject

+(void)setupNewRelic;
+(void)dispatchNewRelicAnalytics;
+(void)configAdobe;
+(void)dispatchAdobeAnalytics;
@end

NS_ASSUME_NONNULL_END
