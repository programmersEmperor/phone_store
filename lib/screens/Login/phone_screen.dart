import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phone_store/Common/Widgets/app_button.dart';
import 'package:phone_store/Common/Widgets/gradient_header.dart';
import 'package:phone_store/Controllers/auth/authController.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:phone_store/Utils/app_colors.dart';
import 'package:phone_store/Utils/font_styles.dart';
import 'package:phone_store/screens/Login/widgets/international_input_field.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  static String routeName = '/login';
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildHeader(context),
          _buildWidget(context),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return const AppHeaderGradient(
      text: 'What Is Your Phone Number',
      isProfile: false,
    );
  }

  Widget _buildWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 20.0.h),
      child: Column(
        children: [
          Text(
            'Please enter your phone number to verify your account',
            style: FontStyles.montserratRegular17(),
          ),
          _buildPhoneField(context),
          SizedBox(
            height: 30.0.h,
          ),
          _buildSendButton(context),
          SizedBox(
            height: 20.0.h,
          ),
          // _buildSkipButton()
        ],
      ),
    );
  }

  Widget _buildPhoneField(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0.h),
      height: 64.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0.r),
        border: Border.all(color: Colors.grey),
      ),
      child: PhoneInput(
        controller: Get.find<AuthController>().phoneController,
      ),
    );
  }

  Widget _buildSendButton(BuildContext context) {
    return AppButton.button(
        height: 64.0.h,
        width: double.infinity,
        color: AppColors.secondary,
        onTap: (){
          debugPrint('+967${Get.find<AuthController>().phoneController.text.trim()}');
          Get.find<AuthController>().phoneAuthentication('+967${Get.find<AuthController>().phoneController.text.trim()}');
        },
        text: 'Send Verification Code');
  }

  Widget _buildSkipButton() {
    return TextButton(
      onPressed: () {},
      child: Text(
        'Skip',
        style: FontStyles.montserratBold17().copyWith(color: Colors.grey),
      ),
    );
  }
}
