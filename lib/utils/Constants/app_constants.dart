import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phone_store/Screens/Cart/cart.dart';
import 'package:phone_store/Screens/Catalogue/catalogue.dart';
import 'package:phone_store/Screens/CheckOut/check_out.dart';
import 'package:phone_store/Screens/Favorite/favorite.dart';
import 'package:phone_store/Screens/Filter/filter.dart';
import 'package:phone_store/Screens/Home/home.dart';
import 'package:phone_store/Screens/Items/items.dart';
import 'package:phone_store/Screens/Login/phone_screen.dart';
import 'package:phone_store/Screens/Login/verification_screen.dart';
import 'package:phone_store/Screens/Main/main.dart';
import 'package:phone_store/Screens/Notifications/notifications.dart';
import 'package:phone_store/Screens/Onboarding/onboarding.dart';
import 'package:phone_store/Screens/Orders/order.dart';
import 'package:phone_store/Screens/PrivacyPolicy/privacy_policy.dart';
import 'package:phone_store/Screens/Product/product.dart';
import 'package:phone_store/Screens/Profile/profile.dart';
import 'package:phone_store/Screens/Settings/settings.dart';
import 'package:phone_store/Screens/ShippingAddress/shipping_address.dart';
import 'package:phone_store/Screens/SignUp/sign_up.dart';

class AppConstants {
  /*static Map<String, Widget Function(dynamic)> appRoutes = {
    '/': (_) => const OnBoarding(),
    Login.routeName: (_) => const Login(),
    Verification.routeName: (_) => const Verification(),
    Home.routeName: (_) => const Home(),
    Main.routeName: (_) => const Main(),
    Catalogue.routeName: (_) => const Catalogue(),
    Items.routeName: (_) => const Items(),
    Filter.routeName: (_) => const Filter(),
    Product.routeName: (_) => Product(),
    Favorite.routeName: (_) => const Favorite(),
    Profile.routeName: (_) => const Profile(),
    Cart.routeName: (_) => const Cart(),
    CheckOut.routeName: (_) => const CheckOut(),
    SignUp.routeName: (_) => const SignUp(),
    Settings.routeName: (_) => const Settings(),
    Orders.routeName: (_) => const Orders(),
    PrivacyPolicy.routeName: (_) => const PrivacyPolicy(),
    OnBoarding.routeName: (_) => const OnBoarding(),
    NotificationScreen.routeName: (_) => const NotificationScreen(),
    ShippingAddress.routeName: (_) => const ShippingAddress(),
  };*/

  static setSystemStyling() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light,
    );
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
  }

  static const privacyPolicyTxt =
      'Give your E-Commerce app an outstanding look.It\'s a small but attractive and beautiful design template for your E-Commerce App.Contact us for more amazing and outstanding designs for your apps.Do share this app with your Friends and rate us if you like this.Also check your other apps';
}
