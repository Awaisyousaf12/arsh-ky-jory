import 'package:app_project/authentication/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Forget extends StatefulWidget {
  const Forget({super.key});

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  TextEditingController emailcontroller = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  forgetPassword() {
    setState(() {
      auth.sendPasswordResetEmail(email: emailcontroller.text).then((value) {
        if (kDebugMode) {
          print('Check Your email');
        }
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Signin()));
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('Check your email')));
      }).onError((error, StackTrace) {
        if (kDebugMode) {
          print(error.toString());
        }
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Something went wrong')));
      });
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
                      image: AssetImage('assets/images (4).jfif'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: SizedBox(
                      height: 70,
                      width: 500,
                      child: Center(
                        child: Text(
                          'ARSH K JORAY',
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.red[900]),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: 460,
                    width: 460,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 1),
                              blurRadius: 4,
                              spreadRadius: 0.5,
                              blurStyle: BlurStyle.normal)
                        ],
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/pngtree-indian-traditional-wedding-pattern-red-background-image_1066381.jpg'),
                            fit: BoxFit.cover)),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Forget Password',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                        offset: Offset(0, 2),
                                        blurRadius: 5,
                                        spreadRadius: 1,
                                        blurStyle: BlurStyle.normal),
                                  ],
                                  borderRadius: BorderRadius.circular(10)),
                              child: TextFormField(
                                controller: emailcontroller,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your email';
                                  } else if (!RegExp(r'[@]')
                                      .hasMatch((value))) {
                                    return 'Please enter correct email';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    hintText: 'Email',
                                    label: const Text('Email'),
                                    prefixIcon: const Icon(Icons.email)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          GestureDetector(
                            onTap: () {
                              forgetPassword();
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                height: 40,
                                width: double.infinity,
                                child: const Center(
                                  child: Text(
                                    'Continue',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const SizedBox(
                            height: 50,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
