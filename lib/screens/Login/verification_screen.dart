import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:phone_store/Common/Widgets/app_button.dart';
import 'package:phone_store/Common/Widgets/gradient_header.dart';
import 'package:phone_store/Controllers/auth/authController.dart';
import 'package:phone_store/Screens/Login/phone_screen.dart';
import 'package:phone_store/Utils/app_colors.dart';
import 'package:phone_store/Utils/font_styles.dart';
import 'package:get/get.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:phone_store/common/Widgets/custom_toast.dart';


class Verification extends StatelessWidget {
  const Verification({Key? key}) : super(key: key);
  static const String routeName = '/verification';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildBody(context));
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          _buildWidget(context),
          SizedBox(height: 30.0.h),
          _buildContinueButton(context),
          SizedBox(height: 30.0.h),
          //_buildResendCodeButton(context),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return const AppHeaderGradient(
      text: 'Verification Code',
      isProfile: false,
    );
  }

  Widget _buildWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 20.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Please enter code send to',
            style: FontStyles.montserratRegular17(),
          ),
          SizedBox(height: 20.0.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '+967 ' + Get.find<AuthController>().phoneController.text,
                style: FontStyles.montserratBold17(),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, Login.routeName);
                },
                child: Text(
                  'Change phone number',
                  style: FontStyles.montserratRegular12()
                      .copyWith(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          SizedBox(height: 30.0.h),
          _buildOTPField(context),
        ],
      ),
    );
  }

  Widget _buildOTPField(BuildContext context) {
    return OTPTextField(
      textFieldAlignment: MainAxisAlignment.spaceEvenly,
      otpFieldStyle: OtpFieldStyle(focusBorderColor: Colors.green),
      width: MediaQuery.of(context).size.width,
      keyboardType: TextInputType.number,
      length: 6,
      style: FontStyles.montserratBold25(),
      onChanged: (value){
        Get.find<AuthController>().otp = value;
      },
    );
  }

  Widget _buildContinueButton(BuildContext context) {
    return Center(
      child: AppButton.button(
          width: 327.w,
          height: 64.h,
          color: AppColors.secondary,
          text: 'Submit',
          onTap: () {
            String otp = Get.find<AuthController>().otp;
            if(otp.length != 6)
            {
              showCustomToast(msg: 'Please Enter the Code');
            }

            Get.find<AuthController>().verifyOTP(Get.find<AuthController>().otp);
          }),
    );
  }

  Widget _buildResendCodeButton(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: () {},
          child: Text(
            'Resend Code',
            style: FontStyles.montserratBold17().copyWith(color: Colors.grey),
          )),
    );
  }
}
