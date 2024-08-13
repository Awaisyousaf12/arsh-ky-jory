import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ClipRRect(
              child: Container(
                height: MediaQuery.of(context).size.height * 1.5,
                width: MediaQuery.of(context).size.width * 1.5,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/istockphoto-1460833709-612x612.jpg'),
                        fit: BoxFit.cover)),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "ARSH K JORAY",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 6),
                            child: Text(
                              'Lets Make your Partner',
                              style:
                                  TextStyle(fontSize: 27, color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 260),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(60),
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: const BoxDecoration(
                                    color: Colors.amber,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/1526556742_S_M_Day_Two_2308.webp'),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 50),
                        child: Text(
                          'Marriages begin when',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 60),
                        child: Text(
                          'we marrry the ones ',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 100),
                        child: Text(
                          'we Love ',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                        offset: Offset(0, 3),
                                        blurRadius: 8,
                                        spreadRadius: 1,
                                        blurStyle: BlurStyle.normal)
                                  ],
                                  borderRadius: BorderRadius.circular(70)),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add,
                                    size: 35,
                                    color: Colors.red[900],
                                  )),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(70),
                            child: SizedBox(
                              height: 70,
                              width: 70,
                              child: const Image(
                                image: AssetImage(
                                  'assets/images (8).jfif',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(70),
                            child: SizedBox(
                              height: 70,
                              width: 70,
                              child: const Image(
                                image: AssetImage(
                                  'assets/images (9).jfif',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(70),
                            child: SizedBox(
                              height: 70,
                              width: 70,
                              child: const Image(
                                image: AssetImage(
                                  'assets/images (10).jfif',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(70),
                            child: SizedBox(
                              height: 70,
                              width: 70,
                              child: const Image(
                                image: AssetImage(
                                  'assets/images (12).jfif',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(70),
                            child: SizedBox(
                              height: 70,
                              width: 70,
                              child: const Image(
                                image: AssetImage(
                                  'assets/images (13).jfif',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(70),
                            child: SizedBox(
                              height: 70,
                              width: 70,
                              child: const Image(
                                image: AssetImage(
                                  'assets/images (14).jfif',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(70),
                            child: SizedBox(
                              height: 70,
                              width: 70,
                              child: const Image(
                                image: AssetImage(
                                  'assets/images (5).jfif',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(70),
                            child: SizedBox(
                              height: 70,
                              width: 70,
                              child: const Image(
                                image: AssetImage(
                                  'assets/images (6).jfif',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(70),
                            child: SizedBox(
                              height: 70,
                              width: 70,
                              child: const Image(
                                image: AssetImage(
                                  'assets/images (11).jfif',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(70),
                            child: SizedBox(
                              height: 70,
                              width: 70,
                              child: const Image(
                                image: AssetImage(
                                  'assets/images (6).jfif',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(70),
                            child: SizedBox(
                              height: 70,
                              width: 70,
                              child: const Image(
                                image: AssetImage(
                                  'assets/images (13).jfif',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(70),
                            child: SizedBox(
                              height: 70,
                              width: 70,
                              child: const Image(
                                image: AssetImage(
                                  'assets/images (30).jfif',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(70),
                            child: SizedBox(
                              height: 70,
                              width: 70,
                              child: const Image(
                                image: AssetImage(
                                  'assets/1526556742_S_M_Day_Two_2308.webp',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(70),
                            child: SizedBox(
                              height: 70,
                              width: 70,
                              child: const Image(
                                image: AssetImage(
                                  'assets/images (5).jfif',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 230,
                            width: 230,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                ClipRRect(
                                  child: Container(
                                    height: 150,
                                    width: 150,
                                    child: Image(
                                      image:
                                          AssetImage('assets/images (9).jfif'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Might be yours',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Text(
                                  'Chance',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white70,
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(0, 3),
                                      blurRadius: 6,
                                      spreadRadius: 1,
                                      blurStyle: BlurStyle.normal),
                                ],
                                border: Border.all(color: Colors.black)),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Container(
                            height: 230,
                            width: 230,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                ClipRRect(
                                  child: Container(
                                    height: 150,
                                    width: 150,
                                    child: Image(
                                      image:
                                          AssetImage('assets/images (14).jfif'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Choosing yours',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Text(
                                  'Couples',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white70,
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(0, 3),
                                      blurRadius: 6,
                                      spreadRadius: 1,
                                      blurStyle: BlurStyle.normal),
                                ],
                                border: Border.all(color: Colors.black)),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Container(
                            height: 230,
                            width: 230,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                ClipRRect(
                                  child: Container(
                                    height: 150,
                                    width: 150,
                                    child: Image(
                                      image:
                                          AssetImage('assets/images (10).jfif'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Make your Couples',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Text(
                                  'Like that',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white70,
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(0, 3),
                                      blurRadius: 6,
                                      spreadRadius: 1,
                                      blurStyle: BlurStyle.normal),
                                ],
                                border: Border.all(color: Colors.black)),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Container(
                            height: 230,
                            width: 230,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                ClipRRect(
                                  child: Container(
                                    height: 150,
                                    width: 150,
                                    child: Image(
                                      image:
                                          AssetImage('assets/images (5).jfif'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Dont miss that',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Text(
                                  'Chance',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white70,
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(0, 3),
                                      blurRadius: 6,
                                      spreadRadius: 1,
                                      blurStyle: BlurStyle.normal),
                                ],
                                border: Border.all(color: Colors.black)),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Container(
                            height: 230,
                            width: 230,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                ClipRRect(
                                  child: Container(
                                    height: 150,
                                    width: 150,
                                    child: Image(
                                      image:
                                          AssetImage('assets/images (12).jfif'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'You never know ',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Text(
                                  'Next might be your love ',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white70,
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(0, 3),
                                      blurRadius: 6,
                                      spreadRadius: 1,
                                      blurStyle: BlurStyle.normal),
                                ],
                                border: Border.all(color: Colors.black)),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Container(
                            height: 230,
                            width: 230,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                ClipRRect(
                                  child: Container(
                                    height: 150,
                                    width: 150,
                                    child: Image(
                                      image:
                                          AssetImage('assets/images (9).jfif'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Might be yours',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Text(
                                  'Chance',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white70,
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(0, 3),
                                      blurRadius: 6,
                                      spreadRadius: 1,
                                      blurStyle: BlurStyle.normal),
                                ],
                                border: Border.all(color: Colors.black)),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Container(
                            height: 230,
                            width: 230,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                ClipRRect(
                                  child: Container(
                                    height: 150,
                                    width: 150,
                                    child: Image(
                                      image:
                                          AssetImage('assets/images (9).jfif'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Might be yours',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Text(
                                  'Chance',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white70,
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(0, 3),
                                      blurRadius: 6,
                                      spreadRadius: 1,
                                      blurStyle: BlurStyle.normal),
                                ],
                                border: Border.all(color: Colors.black)),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Container(
                            height: 230,
                            width: 230,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                ClipRRect(
                                  child: Container(
                                    height: 150,
                                    width: 150,
                                    child: Image(
                                      image:
                                          AssetImage('assets/images (9).jfif'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Might be yours',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Text(
                                  'Chance',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white70,
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(0, 3),
                                      blurRadius: 6,
                                      spreadRadius: 1,
                                      blurStyle: BlurStyle.normal),
                                ],
                                border: Border.all(color: Colors.black)),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
