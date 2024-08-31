import 'package:fitness_app/Assets/app_string.dart';
import 'package:fitness_app/Theme/colors.dart';
import 'package:fitness_app/Theme/fontstyle.dart';
import 'package:flutter/material.dart';

class UserAppbar extends StatelessWidget {
  const UserAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(color: AppColor.secondary),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100.0),
              child: Image.network(
                AppString.randomImage,
                height: 50.0,
                width: 50.0,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppString.greeting,
                style: AppFontStyle.subTitleReguler,
              ),
              Text(
                AppString.username,
                style: AppFontStyle.titlReguler,
              ),
            ],
          ),
          const Spacer(),
          Align(
              alignment: Alignment.centerRight,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: AppColor.black,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      color: AppColor.black,
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
