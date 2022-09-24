import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pmvvm/pmvvm.dart';
import 'package:readika/app/module/home/home.view.dart';

class SplashScreenVm extends ViewModel {
  @override
  void init() {
    super.init();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }
}
