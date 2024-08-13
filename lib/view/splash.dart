import 'dart:async';

import 'package:app_project/view/welcome.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    initializeApp();
  }

  initializeApp() {
    Timer(const Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Welcome()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 01,
              width: MediaQuery.of(context).size.width * 01,
              child: Stack(
                children: [
                  ClipRRect(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 01,
                      width: MediaQuery.of(context).size.width * 01,
                      child: const Image(
                        image: AssetImage(
                            'assets/pngtree-wedding-couple-holding-hands-image_15698218.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
