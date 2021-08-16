package io.github.wangyng.packet_ng_helper;

import android.content.Context;

import androidx.annotation.NonNull;

import java.util.HashMap;
import java.util.List;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import com.mcxiaoke.packer.helper.PackerNg;


public class PacketNgHelperPlugin implements FlutterPlugin, PacketNgHelperApi {

    @Override
    public void onAttachedToEngine(@NonNull FlutterPluginBinding binding) {
        PacketNgHelperApi.setup(binding, this, binding.getApplicationContext());
    }

    @Override
    public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
        PacketNgHelperApi.setup(binding, null, null);
    }
    

    @Override
    public String getMarketName(Context context) {
        return PackerNg.getChannel(context);
    }

   }
