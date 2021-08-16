//
//  PacketNgHelperPlugin.m
//  Pods
//
//  Created by 汪洋 on 2021/8/16.
//

#import "PacketNgHelperPlugin.h"
#import "PacketNgHelperEventSink.h"

@implementation PacketNgHelperPlugin

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
    PacketNgHelperPlugin* instance = [[PacketNgHelperPlugin alloc] init];
    [PacketNgHelperApi setup:registrar api:instance];
}

- (NSString *)getMarketName {
    return @"iOS";
}

@end
