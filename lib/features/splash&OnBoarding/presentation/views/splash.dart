import 'dart:async';

import 'package:ecommerce_app/core/color/colors.dart';
import 'package:ecommerce_app/core/local/shared_preference.dart';
import 'package:ecommerce_app/core/utilities/endpoints.dart';
import 'package:ecommerce_app/core/utilities/routes.dart';
import 'package:ecommerce_app/core/utilities/strings.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  SplashViewState createState() => SplashViewState();
}

class SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  var _visible = true;

  AnimationController? animationController;
  Animation<double>? animation;

  startTime() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, navigationPage);
  }

  void navigationPage() {
    isLoggedIN =
        PreferenceHelper.getDataFromSharedPreference(key: 'IsLoggedIn');
    isLoggedIN != null
        ? Navigator.pushReplacementNamed(context, AppRoutes.layout)
        : Navigator.pushReplacementNamed(context, AppRoutes.login);
  }

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    animation =
        CurvedAnimation(parent: animationController!, curve: Curves.easeOut);

    animation!.addListener(() => setState(() {}));
    animationController!.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: animation!.value * 250,
                height: animation!.value * 250,
              ),
              const SizedBox(
                height: 18,
              ),
              Text(
                AppStrings.appName,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: ColorManager.orangeLight,
                    ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
