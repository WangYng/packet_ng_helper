//
//  PacketNgHelperApi.h
//  Pods
//
//  Created by 汪洋 on 2021/8/16.
//

#import <Foundation/Foundation.h>
#import <Flutter/Flutter.h>
#import "PacketNgHelperEventSink.h"

@protocol PacketNgHelperApiDelegate <NSObject>

- (NSString *)getMarketName;

@end

@interface PacketNgHelperApi : NSObject

+ (void)setup:(NSObject<FlutterPluginRegistrar> *)registrar api:(id<PacketNgHelperApiDelegate>)api;

@end

