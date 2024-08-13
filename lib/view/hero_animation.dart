import 'package:flutter/material.dart';

class HeroAnimation extends StatelessWidget {
  const HeroAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 300,
              width: 300,
              child: Hero(
                  tag: 'couples',
                  child: Image.asset(
                    'assets/images (30).jfif',
                    fit: BoxFit.cover,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
