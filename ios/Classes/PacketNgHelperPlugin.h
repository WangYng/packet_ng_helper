//
//  PacketNgHelperPlugin.h
//  Pods
//
//  Created by 汪洋 on 2021/8/16.
//

#import <Flutter/Flutter.h>
#import "PacketNgHelperApi.h"

@interface PacketNgHelperPlugin : NSObject<PacketNgHelperApiDelegate>

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar;

@end
