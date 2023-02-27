//
//  PacketNgHelperPlugin.m
//  Pods
//
//  Created by 汪洋 on 2023/2/27.
//

#import "PacketNgHelperPlugin.h"
#import "PacketNgHelperEventSink.h"

@interface PacketNgHelperPlugin()

@end

@implementation PacketNgHelperPlugin

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
    PacketNgHelperPlugin* instance = [[PacketNgHelperPlugin alloc] init];
    [PacketNgHelperApi setup:registrar api:instance];
}

- (NSString *)getMarketName {
    return @"iOS";
}

@end
