import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:packet_ng_helper/packet_ng_helper_api.dart';

class PacketNgHelper {

  static Future<String> getMarketName() async {
    return PacketNgHelperApi.getMarketName();
  }

}

