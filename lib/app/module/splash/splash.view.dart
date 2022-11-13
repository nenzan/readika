import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pmvvm/pmvvm.dart';
import 'package:readika/app/module/splash/splash.vm.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MVVM<SplashScreenVm>(
      view: () => _SplashScreenView(),
      viewModel: SplashScreenVm(),
    );
  }
}

class _SplashScreenView extends StatelessView<SplashScreenVm> {
  @override
  Widget render(BuildContext context, SplashScreenVm viewModel) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.book_outlined,
            size: 200,
          ),
          Text(
            'Readika',
            style: GoogleFonts.quicksand(
                fontSize: 50, fontWeight: FontWeight.bold),
          )
        ],
      )),
    );
  }
}
