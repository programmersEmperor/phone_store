import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phone_store/Screens/Onboarding/onboarding.dart';
import 'package:phone_store/firebase_options.dart';
import 'package:phone_store/utils/Constants/app_constants.dart';
import 'package:phone_store/utils/Constants/app_routes.dart';
import 'package:phone_store/utils/Constants/getx_binding.dart';
import 'package:phone_store/utils/app_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(PhoneStore());
}


class PhoneStore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) =>
          GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            getPages: AppRoutes.allRoutes,
            initialBinding: GetxBinding(),
            home: const OnBoarding(),
            builder: FlutterSmartDialog.init(builder: (context, widget) {
              return MediaQuery(
                  data: MediaQuery.of(context).copyWith(textScaleFactor: 0.9),
                  child: widget!);
            }),
          ),
      designSize: const Size(375, 812),
    );
  }
}