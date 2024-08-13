import 'package:app_project/authentication/SignUp.dart';
import 'package:app_project/authentication/signin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeciderScreen extends StatefulWidget {
  const DeciderScreen({super.key});

  @override
  State<DeciderScreen> createState() => _DeciderScreenState();
}

class _DeciderScreenState extends State<DeciderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ClipRRect(
              child: Container(
                height: MediaQuery.of(context).size.height * 01,
                width: MediaQuery.of(context).size.width * 01,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/pre-wedding-photoshoot-service-500x500.webp'),
                        fit: BoxFit.cover)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12, top: 50),
                      child: SizedBox(
                        height: 300,
                        width: 500,
                        child: const Text(
                          'Lets Match',
                          style: TextStyle(fontSize: 40, color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 90),
                      child: CupertinoButton(
                          color: Colors.blue[900],
                          child: const Text(
                            'Sign up',
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Signup()));
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: CupertinoButton(
                          color: Colors.pink[900],
                          child: const Text(
                            'Sign In',
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Signin()));
                          }),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
