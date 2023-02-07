import 'package:flutter/material.dart';

class UserInformationScreen extends StatelessWidget {
  static const String routeName = 'user-information';
  const UserInformationScreen({super.key, required String verificationId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Stack(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                CircleAvatar(
                  // ignore: prefer_const_constructors
                  backgroundImage: NetworkImage(
                    'https://png.pngitem.com/pimgs/s/649-6490124_katie-notopoulos-katienotopoulos-i-write-about-tech-round.png',
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.add_a_photo))
              ],
            )
          ],
        ),
      )),
    );
  }
}
