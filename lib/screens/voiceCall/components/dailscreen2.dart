import 'package:agora_voice_call/screens/voiceCall/components/body1.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';


class DialScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Body1(),
    );
  }
}
