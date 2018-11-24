#import <React/RCTBridgeModule.h>

@interface OrganizzeRCTSales : NSObject <RCTBridgeModule>

@property (strong) RCTResponseSenderBlock callbackReact;

+ (void) resolveCallbackSubscriptionsPricingsWithValues:(NSDictionary *)pricings;

+ (void) resolveCallbackSubscriptionsPricingsWithError:(NSDictionary *)error;

@end