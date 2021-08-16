import 'package:flutter/material.dart';
import 'package:packet_ng_helper/packet_ng_helper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String channel = "Running";

  @override
  void initState() {
    super.initState();

    PacketNgHelper.getMarketName().then((value) {
      setState(() {
        channel = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text(channel),
        ),
      ),
    );
  }
}
