package io.github.wangyng.packet_ng_helper;

import android.content.Context;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.StandardMessageCodec;

public interface PacketNgHelperApi {

    String getMarketName(Context context);

    static void setup(FlutterPlugin.FlutterPluginBinding binding, PacketNgHelperApi api, Context context) {
        BinaryMessenger binaryMessenger = binding.getBinaryMessenger();

        {
            BasicMessageChannel<Object> channel = new BasicMessageChannel<>(binaryMessenger, "io.github.wangyng.packet_ng_helper.getMarketName", new StandardMessageCodec());
            if (api != null) {
                channel.setMessageHandler((message, reply) -> {
                    Map<String, Object> wrapped = new HashMap<>();
                    try {
                        String result = api.getMarketName(context);
                        wrapped.put("result", result);
                    } catch (Exception exception) {
                        wrapped.put("error", wrapError(exception));
                    }
                    reply.reply(wrapped);
                });
            } else {
                channel.setMessageHandler(null);
            }
        }

   }

    static HashMap<String, Object> wrapError(Exception exception) {
        HashMap<String, Object> errorMap = new HashMap<>();
        errorMap.put("message", exception.toString());
        errorMap.put("code", null);
        errorMap.put("details", null);
        return errorMap;
    }
}
