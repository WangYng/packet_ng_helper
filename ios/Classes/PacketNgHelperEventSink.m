
// This file is automatically generated. DO NOT EDIT, all your changes would be lost.

//
//  PacketNgHelperEventSink.m
//  Pods
//
//  Created by 汪洋 on 2023/2/27.
//

#import "PacketNgHelperEventSink.h"

@implementation PacketNgHelperEventSink

- (FlutterError * _Nullable)onCancelWithArguments:(id _Nullable)arguments {
    self.event = NULL;
    return nil;
}

- (FlutterError * _Nullable)onListenWithArguments:(id _Nullable)arguments eventSink:(nonnull FlutterEventSink)events {
    self.event = events;
    return nil;
}

@end
