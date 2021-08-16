//
//  PacketNgHelperApi.m
//  Pods
//
//  Created by 汪洋 on 2021/8/16.
//

#import "PacketNgHelperApi.h"

@implementation PacketNgHelperApi

+ (void)setup:(NSObject<FlutterPluginRegistrar> *)registrar api:(id<PacketNgHelperApiDelegate>)api {
    NSObject<FlutterBinaryMessenger> *messenger = [registrar messenger];

    {
        FlutterBasicMessageChannel *channel =[FlutterBasicMessageChannel messageChannelWithName:@"io.github.wangyng.packet_ng_helper.getMarketName" binaryMessenger:messenger];
        if (api != nil) {
            [channel setMessageHandler:^(id  message, FlutterReply reply) {
                NSMutableDictionary<NSString *, NSObject *> *wrapped = [NSMutableDictionary new];
                if ([message isKindOfClass:[NSDictionary class]]) {
                    NSString * result = [api getMarketName];
                    wrapped[@"result"] = result;
                } else {
                    wrapped[@"error"] = @{@"message": @"parse message error"};
                }
                reply(wrapped);
            }];
        } else {
            [channel setMessageHandler:nil];
        }
    }

}

@end