import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:phone_store/Screens/Login/verification_screen.dart';
import 'package:phone_store/common/Widgets/custom_toast.dart';
import 'package:phone_store/screens/Home/home.dart';
import 'package:otp_text_field/otp_field.dart';

class AuthController extends GetxController{
  final _auth = FirebaseAuth.instance;
  var verificationId = ''.obs;
  TextEditingController phoneController = TextEditingController();
  var otp = '';

  Future<void> phoneAuthentication(String phone) async{

    await _auth.verifyPhoneNumber(
      phoneNumber: phone,
      verificationCompleted: (credential) {},
      codeSent: (verificationId, resendToken){
        this.verificationId.value = verificationId;
        debugPrint('code is sent');
        Get.toNamed(Verification.routeName);
      },
      timeout: const Duration(seconds: 60),
      codeAutoRetrievalTimeout: (verificationId){
        this.verificationId.value = verificationId;
      },
      verificationFailed: (FirebaseAuthException e){
        debugPrint('my error is ${e.message}');
      },
    );
  }

  Future<void> verifyOTP(String otp) async{

    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: verificationId.value, smsCode: otp);
      UserCredential user = await _auth.signInWithCredential(credential);
      debugPrint('${credential.smsCode}: credential.smsCode');

      if (user.user != null) {
        Get.offAndToNamed(Home.routeName);
      }
    }
    catch (e){
      showCustomToast(msg: 'wrong code');
    }
  }

}