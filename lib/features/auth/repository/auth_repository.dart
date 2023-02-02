import 'dart:js';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../common/utils/utils.dart';

class AuthRepository {
  final FirebaseAuth auth;
  final FirebaseFirestore firestore;
  AuthRepository({
    required this.auth,
    required this.firestore,
  });

  void signInWithPhone(BuildContext context, String phoneNumber) async {
    try {
        await auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential);
        }, verificationFailed: (e) {
          throw Exception(e.message);
        }, codeSent: ((String verificationId, int? resendToken) async{

        }), codeAutoRetrievalTimeout: PhoneCodeAutoRetrievalTimeout)
      } on FirebaseAuthException catch (e) {
        showSnackBar(context: context, content: e.message!);
      }
  }
}