#import "IsGpsOpenPlugin.h"
#if __has_include(<is_gps_open/is_gps_open-Swift.h>)
#import <is_gps_open/is_gps_open-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "is_gps_open-Swift.h"
#endif

@implementation IsGpsOpenPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftIsGpsOpenPlugin registerWithRegistrar:registrar];
}
@end
