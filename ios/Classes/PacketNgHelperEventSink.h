//
//  PacketNgHelperEventSink.h
//  Pods
//
//  Created by 汪洋 on 2021/8/16.
//

#import <Foundation/Foundation.h>
#import <Flutter/Flutter.h>

@interface PacketNgHelperEventSink : NSObject <FlutterStreamHandler>

@property (nonatomic, copy) FlutterEventSink event;

@end
