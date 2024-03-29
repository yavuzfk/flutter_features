import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'lottie_constant.dart';
import 'lottie_items.dart';
import 'lottie_loading.dart';

class LottieLearn extends StatefulWidget {
  const LottieLearn({Key? key}) : super(key: key);

  @override
  State<LottieLearn> createState() => _LottieLearnState();
}

// https://assets3.lottiefiles.com/packages/lf20_ydo1amjm.json
class _LottieLearnState extends State<LottieLearn>
    with TickerProviderStateMixin {
  late AnimationController controller;
  bool isLight = false;
  @override
  void initState() {
    super.initState();
    // duration ı override ettik gibi güzel olay
    controller = AnimationController(
        vsync: this, duration: DurationItems.durationNormal());
    // navigateToHome();
  }

  // Future<void> navigateToHome() async {
  //   await Future.delayed(const Duration(seconds: 1));
  //   Navigator.of(context).pushReplacementNamed(NavigateRoutes.home.withParaf);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
              onTap: () async {
                await controller.animateTo(isLight ? 0.5 : 1);
                // controller.animateTo(0.5);
                isLight = !isLight;
                Future.microtask(() {
                  // üstteki işlemler bitince
                  // context.read<ThemeNotifer>().changeTheme();
                  //TODO: buraya bir theme değişme olayı bağlanacak
                });
              },
              child: Lottie.asset(LottieItems.themeChange.lottiePath,
                  repeat: false, controller: controller))
        ],
      ),
      body: const LoadingLottie(),
    );
  }
}
