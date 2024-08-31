import 'package:fitness_app/Assets/app_data_config.dart';
import 'package:fitness_app/Theme/colors.dart';
import 'package:fitness_app/Theme/fontstyle.dart';
import 'package:flutter/material.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  late PageController _pageController;
  int _pageIndex = 0;
  // Timer? _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Align(
                alignment: Alignment.topRight,
                child: Text("hello"),
              ),
            ),
            Expanded(
              child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    _pageIndex = index;
                  });
                },
                itemCount: AppDataConfig.onbdata.length,
                controller: _pageController,
                itemBuilder: (context, index) => OnboardContent(
                  title: AppDataConfig.onbdata[index]["title"].toString(),
                  subTitle: AppDataConfig.onbdata[index]["subTitle"].toString(),
                  image: AppDataConfig.onbdata[index]["image"].toString(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    AppDataConfig.onbdata.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: DotIndicator(
                        isActive: index == _pageIndex,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OnboardContent extends StatelessWidget {
  const OnboardContent(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle});

  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 300,
            width: 300,
            child: Image.asset(image),
          ),
          // Image.asset(image),
          RichText(
            text:
                TextSpan(style: DefaultTextStyle.of(context).style, children: [
              TextSpan(
                  text: "${title.split(" ")[0]} ",
                  style: AppFontStyle.h1primary),
              TextSpan(
                  text: "${title.split(" ")[1]} ",
                  style: AppFontStyle.h1secondary),
              TextSpan(
                  text: title.split(" ")[2].toString(),
                  style: AppFontStyle.h1primary),
            ]),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            subTitle,
            textAlign: TextAlign.center,
            style: AppFontStyle.h2primary,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    this.isActive = false,
    super.key,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        color: isActive ? AppColor.primary : AppColor.black,
        border: isActive
            ? null
            : Border.all(
                color: AppColor.black,
                width: isActive ? 10 : 0,
              ),

        // width: isActive ? 24 : 8,
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}
