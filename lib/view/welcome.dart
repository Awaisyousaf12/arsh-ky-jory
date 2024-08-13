import 'package:app_project/view/Decider_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
      body: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                child: SizedBox(
                  height: 300,
                  width: double.maxFinite,
                  child: const Image(
                    image: AssetImage(
                        'assets/pngtree-indian-traditional-wedding-pattern-red-background-image_1066381.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  height: 300,
                  width: 300,
                  child: const Center(
                    child: Text(
                      'ARSH K JORAY',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            'Welcome',
            style: TextStyle(
                fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const Text(
            'This application made for you',
            style: TextStyle(fontSize: 16),
          ),
          const Text(
            'Where you will find your future partner',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 60,
          ),
          CupertinoButton(
              color: Colors.blue[900],
              child: const Text('Get Started '),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DeciderScreen()));
              })
        ],
      ),
    );
  }
}
