import 'package:flutter/material.dart';
import 'package:gantabya_app/app/app.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  updateAppState() {
    MyApp.instance.appState = 10;
  }

  getAppState() {
    print(MyApp.instance.appState);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
