import 'dart:io';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/utils/utils.dart';

class UserInformationScreen extends StatefulWidget {
  static const String routeName = 'user-information';
  const UserInformationScreen({super.key, required String verificationId});

  @override
  State<UserInformationScreen> createState() => _UserInformationScreenState();
}

class _UserInformationScreenState extends State<UserInformationScreen> {
  final TextEditingController nameController = TextEditingController();
  File? image;
  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
  }

  void selectImage() async {
    image = await pickImagrFromGallery(context);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Stack(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                image == null
                    ? const CircleAvatar(
                        // ignore: prefer_const_constructors
                        backgroundImage: NetworkImage(
                          'https://png.pngitem.com/pimgs/s/649-6490124_katie-notopoulos-katienotopoulos-i-write-about-tech-round.png',
                        ),
                        radius: 64,
                      )
                    : CircleAvatar(
                        backgroundImage: FileImage(
                          image!,
                        ),
                        radius: 64,
                      ),
                Positioned(
                  bottom: -10,
                  left: 80,
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.add_a_photo)),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: size.width * 0.85,
                  padding: const EdgeInsets.all(20),
                  // ignore: prefer_const_constructors
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Enter your name',
                    ),
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.done)),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
