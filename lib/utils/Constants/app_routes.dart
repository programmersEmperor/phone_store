import 'package:get/get.dart';
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
import 'package:phone_store/Screens/SignUp/sign_up.dart';
import 'package:phone_store/screens/ShippingAddress/shipping_address.dart';

import '../../screens/Cart/cart.dart';

class AppRoutes {
  static final allRoutes = [
    GetPage(name: OnBoarding.routeName, page: ()=>const OnBoarding()),
    GetPage(name: Login.routeName, page: ()=>const Login()),
    GetPage(name: Verification.routeName, page: ()=>const Verification()),
    GetPage(name: Home.routeName, page: ()=>const Home()),
    GetPage(name: Main.routeName, page: ()=>const Main()),
    GetPage(name: Catalogue.routeName, page: ()=>const Catalogue()),
    GetPage(name: Items.routeName, page: ()=>const Items()),
    GetPage(name: Filter.routeName, page: ()=>const Filter()),
    GetPage(name: Product.routeName, page: ()=>  Product()),
    GetPage(name: Favorite.routeName, page: ()=>const Favorite()),
    GetPage(name: Profile.routeName, page: ()=>const Profile()),
    GetPage(name: Cart.routeName, page: ()=>const Cart()),
    GetPage(name: CheckOut.routeName, page: ()=>const CheckOut()),
    GetPage(name: SignUp.routeName, page: ()=>const SignUp()),
    GetPage(name: Profile.routeName, page: ()=>const Profile()),
    GetPage(name: Settings.routeName, page: ()=>const Settings()),
    GetPage(name: Orders.routeName, page: ()=>const Orders()),
    GetPage(name: PrivacyPolicy.routeName, page: ()=>const PrivacyPolicy()),
    GetPage(name: NotificationScreen.routeName, page: ()=>const NotificationScreen()),
    GetPage(name: ShippingAddress.routeName, page: ()=>const ShippingAddress()),
  ];
}