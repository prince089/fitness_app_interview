import 'package:fitness_app/Theme/colors.dart';
import 'package:fitness_app/Widget/User/celender.dart';
import 'package:fitness_app/Widget/User/user_appbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: AppColor.appBackground,
        height: double.infinity,
        child: const Column(
          children: [
            UserAppbar(),
            Celender(),
          ],
        ),
      )),
    );
  }
}
