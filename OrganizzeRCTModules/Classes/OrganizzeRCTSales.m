#import <Foundation/Foundation.h>
#import "OrganizzeRCTSales.h"
#import "OrganizzeRCTNotificationCenter.h"

@implementation OrganizzeRCTSales

+ (id) sharedInstance {
    static OrganizzeRCTSales *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[OrganizzeRCTSales alloc] init];
    });
    return sharedInstance;
}

+ (void) resolveCallbackSubscriptionsPricingsWithValues: (NSDictionary *) pricings {
    OrganizzeRCTSales *instance = [OrganizzeRCTSales sharedInstance];
    NSArray *returningArray = [NSArray arrayWithObjects: [NSNull null], pricings, nil];
    instance.callbackReact(returningArray);
}

+ (void) resolveCallbackSubscriptionsPricingsWithError: (NSDictionary *) error {
    OrganizzeRCTSales *instance = [OrganizzeRCTSales sharedInstance];
    NSArray *returningArray = [NSArray arrayWithObjects: error, [NSNull null], nil];
    instance.callbackReact(returningArray);
}

+ (void) resolveCallbackSubscriptionsSubscriptionSuccess: (NSDictionary *) success {
    OrganizzeRCTSales *instance = [OrganizzeRCTSales sharedInstance];
    NSArray *returningArray = [NSArray arrayWithObjects: [NSNull null], success, nil];
    instance.callbackReact(returningArray);
}

+ (void) resolveCallbackSubscriptionsSubscriptionError: (NSDictionary *) error {
    OrganizzeRCTSales *instance = [OrganizzeRCTSales sharedInstance];
    NSArray *returningArray = [NSArray arrayWithObjects: error, [NSNull null], nil];
    instance.callbackReact(returningArray);
}

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(getSubscriptionsPricings:(RCTResponseSenderBlock)callback) {
    OrganizzeRCTSales *instance = [OrganizzeRCTSales sharedInstance];
    instance.callbackReact = callback;
    NSMutableDictionary *params = @{ @"action": @"getSubscriptionPricings" };
    [OrganizzeRCTNotificationCenter postNotificationWithParams:params];
}

RCT_EXPORT_METHOD(monthlySubscribe:(RCTResponseSenderBlock)callback) {
    OrganizzeRCTSales *instance = [OrganizzeRCTSales sharedInstance];
    instance.callbackReact = callback;
    NSMutableDictionary *params = @{ @"action": @"monthlySubscribe" };
    [OrganizzeRCTNotificationCenter postNotificationWithParams:params];
}

RCT_EXPORT_METHOD(yearlySubscribe:(RCTResponseSenderBlock)callback) {
    OrganizzeRCTSales *instance = [OrganizzeRCTSales sharedInstance];
    instance.callbackReact = callback;
    NSMutableDictionary *params = @{ @"action": @"yearlySubscribe" };
    [OrganizzeRCTNotificationCenter postNotificationWithParams:params];
}

@end