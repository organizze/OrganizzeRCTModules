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

+ resolveCallbackSubscriptionsPricingsWithValues: (NSDictionary *) pricings {
    RCTResponseSenderBlock callback = [[OrganizzeRCTSales sharedInstance] callbackReact];
    callback(@[[NSNull null], pricings]);
}

+ resolveCallbackSubscriptionsPricingsWithError: (NSDictionary *) error {
    RCTResponseSenderBlock callback = [[OrganizzeRCTSales sharedInstance] callbackReact];
    callback(@[error, [NSNull null]]);
}

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(getSubscriptionsPricings:(RCTResponseSenderBlock)callback)
{
    OrganizzeRCTSales *instance = [OrganizzeRCTSales sharedInstance];
    instance.callbackReact = callback;
    NSMutableDictionary *params = @{ @"action": @"getSubscriptionPricings" };
    [OrganizzeRCTNotificationCenter postNotificationWithParams:params];
}


@end