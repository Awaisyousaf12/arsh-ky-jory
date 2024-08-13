import 'dart:io';

import 'package:app_project/view/Home_screen.dart';
import 'package:app_project/view/hero_animation.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController FullNamecontroller = TextEditingController();
  TextEditingController Addresscontroller = TextEditingController();
  TextEditingController Emailcontroller = TextEditingController();
  TextEditingController ContactNumbercontroller = TextEditingController();

  File? profilepic;
  DateTime _datetime = DateTime.now();
  void showdatepicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1950),
            lastDate: DateTime(2050))
        .then((value) {
      setState(() {
        _datetime = value!;
      });
    });
  }

  int index = 0;
  bool radiovalue = false;
  String? dropdownvalue;
  List<String> items = [
    'Faisalabad',
    'Lahore',
    'Karachi',
    'Peshawar',
    'Islamabad',
    'Multan',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 65,
        title: const Text(
          'Person Profile',
          style: TextStyle(fontSize: 26, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink[900],
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
            icon: const Icon(
              Icons.navigate_before,
              color: Colors.white,
              size: 28,
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: SizedBox(
                  height: 35,
                  width: 35,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HeroAnimation()));
                    },
                    child: Hero(
                        tag: 'Couples',
                        child: Image.asset(
                          'assets/images (30).jfif',
                          fit: BoxFit.cover,
                        )),
                  )),
            ),
          )
        ],
      ),
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
                            'assets/pre-wedding-photoshoot-service-500x500.webp'),
                        fit: BoxFit.cover)),
                child: Column(
                  children: [
                    Center(
                      child: CupertinoButton(
                        onPressed: () async {
                          XFile? selectedimage = await ImagePicker()
                              .pickImage(source: ImageSource.gallery);
                          if (selectedimage != null) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                backgroundColor: Colors.pink[900],
                                content: const Text(
                                  'Image selected',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                )));
                            // ignore: unused_local_variable
                            File convertedFile = File(selectedimage.path);
                            print('Image selected');
                          } else {
                            print('Image not selected');
                          }
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor: Colors.blue[900],
                              content: const Text(
                                'Image not  selected',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              )));
                        },
                        child: CircleAvatar(
                          radius: 70,
                          backgroundColor: Colors.blue[900],
                          child: const Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 80,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: TextFormField(
                        controller: FullNamecontroller,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          } else if (!RegExp(r'[abcdefghijklmnopqrstuvwxyz]')
                              .hasMatch((value))) {
                            return 'Please enter alphabetic letters';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                            hintText: 'Full Name',
                            label: Text(
                              'Full Name',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            prefixIcon: Icon(
                              Icons.person,
                              size: 30,
                              color: Colors.black,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: TextFormField(
                        controller: Addresscontroller,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your address';
                          } else if (!RegExp(
                                  r'[abcdefghijklmnopqrstuvwxyz1234567890]')
                              .hasMatch((value))) {
                            return 'Please enter your address';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                            hintText: 'Address',
                            label: Text(
                              'Address',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            prefixIcon: Icon(
                              Icons.place,
                              size: 30,
                              color: Colors.black,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: TextFormField(
                        controller: Emailcontroller,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          } else if (!RegExp(r'[@]').hasMatch((value))) {
                            return 'Please enter Correct Email';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                            hintText: 'Email',
                            label: Text(
                              'Email',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              size: 30,
                              color: Colors.black,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: TextFormField(
                        controller: ContactNumbercontroller,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your Contact no';
                          } else if (!RegExp(r'[0123456789]')
                              .hasMatch((value))) {
                            return 'Please enter Correct Contact no';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                            hintText: 'Contact Number',
                            label: Text(
                              'Contact Number',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            prefixIcon: Icon(
                              Icons.phone,
                              size: 30,
                              color: Colors.black,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Icon(
                            Icons.location_city_sharp,
                            size: 30,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: DropdownButton(
                              icon: const Icon(
                                Icons.arrow_drop_down,
                                color: Colors.black,
                                size: 38,
                              ),
                              hint: const Text(
                                'Select City',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              value: dropdownvalue,
                              items: items.map((String? items) {
                                return DropdownMenuItem(
                                    value: items,
                                    child: Text(items.toString()));
                              }).toList(),
                              onChanged: (newvalue) {
                                setState(() {
                                  dropdownvalue = newvalue;
                                });
                              }),
                        ),
                        Expanded(
                          flex: 100,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 50, right: 15),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  prefixIcon: const Icon(
                                    Icons.calendar_month,
                                    size: 30,
                                    color: Colors.black,
                                  ),
                                  hintText: 'Select Your Age',
                                  label: Text(
                                    _datetime.toString(),
                                    style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  )),
                              onTap: showdatepicker,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 19),
                        child: Text(
                          'Select your Gender',
                          style: TextStyle(
                              fontSize: 19,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Radio(
                              activeColor: Colors.blue[900],
                              value: 0,
                              groupValue: index,
                              onChanged: (v) {
                                setState(() {
                                  index = v!;
                                });
                              }),
                        ),
                        const Text(
                          'Male',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Radio(
                              activeColor: Colors.blue[900],
                              value: 1,
                              groupValue: index,
                              onChanged: (v) {
                                setState(() {
                                  index = v!;
                                });
                              }),
                        ),
                        const Text(
                          'Female',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CupertinoButton(
                        color: Colors.blue[900],
                        child: const Text(
                          'Upload',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () {})
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
