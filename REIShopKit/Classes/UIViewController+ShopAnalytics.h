//
//  UIViewController+ShopAnalytics.h
//  REI
//
//  Created by chris1 on 7/24/19.
//  Copyright © 2019 REI. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AnalyticsProvider.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (ShopAnalytics) <AnalyticsProvider>

- (void)clearAnalytics;

- (void)configureAnalytics;

- (void)dispatchAnalyticsEvent;

- (void)dispatchAnalyticsEvent:(NSString * _Nonnull)eventName;

- (void)dispatchAnalyticsEvent:(NSString * _Nonnull)eventName contextData:(NSDictionary * _Nullable)contextData;

- (NSDictionary * _Nullable)getAnalyticsContextData;

- (void)setAdditionalAnalyticsContextData:(NSDictionary<NSString *,NSString *> * _Nonnull)contextData;

- (void)setAnalyticsChannel:(NSString * _Nonnull)channel;

- (void)setAnalyticsPageName:(NSString * _Nonnull)pageName;

- (void)setAnalyticsProductString:(NSString * _Nonnull)productString;

- (void)setAnalyticsSubSection1:(NSString * _Nonnull)subSection1;

- (void)setAnalyticsSubSection2:(NSString * _Nonnull)subSection2;

- (void)setAnalyticsTemplateType:(NSString * _Nonnull)templateType;

- (void)updateAnalyticsWithDictionary:(NSDictionary<NSString *,NSString *> * _Nonnull)dictionary;

@end

NS_ASSUME_NONNULL_END
