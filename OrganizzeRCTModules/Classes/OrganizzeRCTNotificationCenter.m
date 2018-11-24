#import <Foundation/Foundation.h>
#import "OrganizzeRCTNotificationCenter.h"

@implementation OrganizzeRCTNotificationCenter

NSString *const NotificationName = @"OrganizzeRCTNotification";

+ (id)defaultCenter {
    static OrganizzeRCTNotificationCenter *notificationCenter = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        notificationCenter = [[self alloc] init];
    });
    return notificationCenter;
}

+ (void) addObserver:(id)observer selector:(SEL)selector {
    [[OrganizzeRCTNotificationCenter defaultCenter] addObserver:observer selector:selector name:NotificationName object: nil];
}

+ (void)removeObserver:(id)observer {
    [[OrganizzeRCTNotificationCenter defaultCenter] removeObserver:observer name:NotificationName object: nil];
}

+ (void) postNotificationWithParams:(NSDictionary*)params {
    [[OrganizzeRCTNotificationCenter defaultCenter] postNotificationName:NotificationName object:nil userInfo: params];
}

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(postNotificationWithParams:(NSDictionary*)params) {
    [OrganizzeRCTNotificationCenter postNotificationWithParams:params];
}

@end
