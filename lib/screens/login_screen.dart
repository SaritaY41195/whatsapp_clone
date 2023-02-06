import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_clone/common/utils/colors.dart';
import 'package:whatsapp_clone/common/utils/utils.dart';
import 'package:whatsapp_clone/common/widgets/custom_button.dart';
import 'package:whatsapp_clone/features/auth/repository/controller/auth_controller.dart';

class LoginScreen extends ConsumerStatefulWidget {
  static const routeName = 'login-screen';
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final phoneController = TextEditingController();
  Country? country;

  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
  }

  void pickCountry() {
    // showPhoneCode: false,
    showCountryPicker(
        context: context,
        // ignore: no_leading_underscores_for_local_identifiers
        onSelect: (Country _country) {
          setState(() {
            // ignore: no_leading_underscores_for_local_identifiers, unused_local_variable
            country = _country;
          });
        });
  }

  void sendPhoneNumber() {
    String phoneNumber = phoneController.text.trim();
    if (country != null && phoneNumber.isNotEmpty) {
      ref
          .read(authControllerProvider)
          .signInWithPhone(context, '+${country!.phoneCode}phoneNumber');
    } else {
      showSnackBar(context: context, content: 'Fill out of all fields');
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter your phone number'),
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                'Whatsapp will need to verify your phone number',
              ),
              const SizedBox(
                height: 10,
              ),
              // ignore: prefer_const_constructors
              TextButton(
                onPressed: () => pickCountry(),
                child: const Text('Pick country'),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  if (country != null) Text('+${country!.phoneCode}'),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: size.width * 0.7,
                    child: TextField(
                      controller: phoneController,
                      decoration: const InputDecoration(
                        hintText: 'phone number',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.6),
              SizedBox(
                width: 10,
                child: CustomButton(text: 'NEXT', onPressed: sendPhoneNumber),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
