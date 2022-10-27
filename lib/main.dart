import 'package:flutter/material.dart';
import 'package:stomp_dart_client/stomp.dart';
import 'package:stomp_dart_client/stomp_config.dart';
import 'package:stomp_dart_client/stomp_frame.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void onConnectCallback(StompFrame connectFrame) {
    print('CONECTOU');
    print(connectFrame.headers);
  }

  @override
  Widget build(BuildContext context) {
    StompClient client = StompClient(
      config: StompConfig(url: 'wss://rafael-w5.weon.com.br/stomp', onConnect: onConnectCallback),
    );

    client.activate();

    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Container());
  }
}
