#import <Foundation/Foundation.h>
#import "OrganizzeRCTSales.h"

@implementation OrganizzeRCTSales

RCT_EXPORT_MODULE();

+ (instancetype)sharedInstance {
    static OrganizzeRCTSales *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[OrganizzeRCTSales alloc] init];
    });
    return sharedInstance;
}

- (void) getSubscriptionsPricings:(RCTResponseSenderBlock)callback {
    self.callbackReact = callback;
    NSDictionary *params = @{ @"action": @"getSubscriptionPricings" };
    [OrganizzeRCTNotificationCenter postNotificationWithParams: params];
}

+ resolveCallbackWithPricings: (NSDictionary *) pricings {
    RCTResponseSenderBlock callback = [[OrganizzeRCTSales sharedInstance] callbackReact];
    callback(@[[NSNull null], pricings]);
}

RCT_EXPORT_METHOD(getSubscriptionsPricings:(RCTResponseSenderBlock)callback) {
    [[OrganizzeRCTSales sharedInstance] getSubscriptionsPricings:callback];
}

@end