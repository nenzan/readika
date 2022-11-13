import 'package:flutter/material.dart';
import 'package:readika/app/app.view.dart';

void main() {
  runApp(const Root());
}

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: App(),
      debugShowCheckedModeBanner: false,
    );
  }
}
