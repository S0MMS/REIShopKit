#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "AnalyticsProvider.h"
#import "BazUtil.h"
#import "ShopKitAnalyticsHelper.h"
#import "UIViewController+ShopAnalytics.h"

FOUNDATION_EXPORT double REIShopKitVersionNumber;
FOUNDATION_EXPORT const unsigned char REIShopKitVersionString[];

