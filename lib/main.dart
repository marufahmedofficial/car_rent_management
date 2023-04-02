import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dhaka_rides/pages/add_car_page.dart';
import 'package:dhaka_rides/pages/add_driver_page.dart';
import 'package:dhaka_rides/pages/add_fare_page.dart';
import 'package:dhaka_rides/pages/admin_dashboard_page.dart';
import 'package:dhaka_rides/pages/admin_login_page.dart';
import 'package:dhaka_rides/pages/booking_list_page.dart';
import 'package:dhaka_rides/pages/booking_page.dart';
import 'package:dhaka_rides/pages/car_details_page.dart';
import 'package:dhaka_rides/pages/car_list_page.dart';
import 'package:dhaka_rides/pages/driver_details_page.dart';
import 'package:dhaka_rides/pages/driver_list_page.dart';
import 'package:dhaka_rides/pages/launcher_page.dart';
import 'package:dhaka_rides/pages/login_email_page.dart';
import 'package:dhaka_rides/pages/login_phone_page.dart';
import 'package:dhaka_rides/pages/order_details_page.dart';
import 'package:dhaka_rides/pages/otp_verification_page.dart';
import 'package:dhaka_rides/pages/signin_option_page.dart';
import 'package:dhaka_rides/pages/user_dashboard_page.dart';
import 'package:dhaka_rides/providers/admin_provider.dart';
import 'package:dhaka_rides/providers/booking_provider.dart';
import 'package:dhaka_rides/providers/car_provider.dart';
import 'package:dhaka_rides/providers/fare_provider.dart';
import 'package:dhaka_rides/providers/user_provider.dart';

import 'providers/driver_provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => AdminProvider()),
    ChangeNotifierProvider(create: (context) => UserProvider()),
    ChangeNotifierProvider(create: (context) => CarProvider()),
    ChangeNotifierProvider(create: (context) => DriverProvider()),
    ChangeNotifierProvider(create: (context) => FareProvider()),
    ChangeNotifierProvider(create: (context) => BookingProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rent a Car',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: SigninOptionPage.routeName,
      routes: {
        SigninOptionPage.routeName: (context) => SigninOptionPage(),
        LoginPhonePage.routeName: (context) => LoginPhonePage(),
        LoginEmailPage.routeName: (context) => LoginEmailPage(),
        OtpVerificationPage.routeName: (context) => OtpVerificationPage(),
        UserDashboardPage.routeName: (context) => UserDashboardPage(),
        AdminDashboardPage.routeName: (context) => AdminDashboardPage(),
        AdminLoginPage.routeName: (context) => AdminLoginPage(),
        CarDetailsPage.routeName: (context) => CarDetailsPage(),
        AddCarPage.routeName: (context) => AddCarPage(),
        CarListPage.routeName: (context) => CarListPage(),
        DriverDetailsPage.routeName: (context) => DriverDetailsPage(),
        AddDriverPage.routeName: (context) => AddDriverPage(),
        DriverListPage.routeName: (context) => DriverListPage(),
        AddFarePage.routeName: (context) => AddFarePage(),
        BookingPage.routeName: (context) => BookingPage(),
        OrderDetailsPage.routeName: (context) => OrderDetailsPage(),
        BookingListPage.routeName: (context) => BookingListPage(),
      },
    );
  }
}
