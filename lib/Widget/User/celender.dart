import 'package:fitness_app/Assets/app_string.dart';
import 'package:fitness_app/Theme/colors.dart';
import 'package:fitness_app/Theme/fontstyle.dart';
import 'package:fitness_app/Widget/Core/icon_button.dart';
import 'package:flutter/material.dart';

class Celender extends StatelessWidget {
  const Celender({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Container(
        decoration: BoxDecoration(
            color: AppColor.secondary,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: AppColor.black,
                blurRadius: 5,
                spreadRadius: 0.1,
                offset: const Offset(0, 2),
              )
            ]),
        height: 150,
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppString.today,
                    style: AppFontStyle.h3Reguler,
                  ),
                  AppIconButton(
                    icon: const Icon(
                      Icons.calendar_today,
                      size: 22,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                // physics: ,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return renderDay();
                },
                itemCount: 3,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget renderDay() {
    return Padding(
      padding: const EdgeInsets.only(right: 5, left: 5, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColor.primary,
        ),
        // height: 10,
        width: 48,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("S"),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColor.secondary,
              ),
              height: 30,
              width: 30,
              child: Center(child: Text("11")),
            )
          ],
        ),
      ),
    );
  }
}
