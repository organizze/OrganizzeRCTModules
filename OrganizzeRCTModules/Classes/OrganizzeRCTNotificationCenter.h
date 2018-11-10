#import <React/RCTBridgeModule.h>

@interface OrganizzeRCTNotificationCenter : NSNotificationCenter <RCTBridgeModule>

+ (void) addObserver:(id)observer selector:(SEL)selector;

+ (void) removeObserver:(id)observer;

+ (void) postNotificationWithParams:(NSDictionary*)params;

@end