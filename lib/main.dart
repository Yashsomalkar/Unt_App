import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:agora_voice_call/agora_config.dart';
import 'package:agora_voice_call/screens/voiceCall/components/body1.dart';
import 'package:agora_voice_call/screens/voiceCall/components/dailscreen2.dart';
import 'package:agora_voice_call/screens/voiceCall/dial_screen.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'test app',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Build chat UI
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agora Audio quickstart',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('UNT test APP'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                child: const Text('Voice Call'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => DialScreen()));
                },
              ),
              ElevatedButton(
                child: const Text('Voice Call 2'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => DialScreen2()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
