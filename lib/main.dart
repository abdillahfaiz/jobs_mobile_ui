import 'package:flutter/material.dart';
import 'package:jobs_mobile_app_ui/pages/detail_screen.dart';
import 'package:jobs_mobile_app_ui/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            fontFamily: 'Poppins'),
        routes: {
          '/details': (context) => const DetailScreen(),
        },
        home: const HomePageScreen());
  }
}
