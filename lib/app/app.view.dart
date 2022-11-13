import 'package:flutter/material.dart';
import 'package:pmvvm/pmvvm.dart';
import 'package:readika/app/app.vm.dart';
import 'package:readika/app/module/splash/splash.view.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return MVVM<AppVm>(
      view: () => _AppView(),
      viewModel: AppVm(),
    );
  }
}

class _AppView extends StatelessView<AppVm> {
  const _AppView({Key? key}) : super(key: key);

  @override
  Widget render(context, vm) {
    return const SplashScreen();
  }
}
