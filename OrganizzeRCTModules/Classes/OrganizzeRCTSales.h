#import <React/RCTBridgeModule.h>

@interface OrganizzeRCTSales : NSObject <RCTBridgeModule>

@property (strong) RCTResponseSenderBlock callbackReact;

// + (void) setCallbackReact:(RCTResponseSenderBlock)callback;

// + (void) getSubscriptionsPricings;

+ (void) resolveCallbackWithPricings:(NSDictionary *)pricings;

@end