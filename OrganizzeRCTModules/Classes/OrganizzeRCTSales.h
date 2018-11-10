#import <React/RCTBridgeModule.h>
#import "OrganizzeRCTNotificationCenter.h"

@interface OrganizzeRCTSales : NSObject <RCTBridgeModule>

@property (strong) RCTResponseSenderBlock *callbackReact;

+ (instancetype)sharedInstance;

@end