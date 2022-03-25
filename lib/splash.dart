import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer(const Duration(seconds: 3), () => {
      AutoRouter.of(context).replaceNamed('/login')
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                    'assets/images/auth/logo.png',
                    width: 100,
                    height: 100
                ),
                const Divider(color: Colors.transparent),
                const Text(
                    'Flutter Starter App',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    )
                )
              ],
            )
        )
    );
  }

  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
  }
}