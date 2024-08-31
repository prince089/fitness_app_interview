import 'package:fitness_app/Theme/colors.dart';
import 'package:flutter/material.dart';

class AppIconButton extends StatefulWidget {
  const AppIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });
  // ignore: prefer_typing_uninitialized_variables
  final onPressed;
  final Icon icon;

  @override
  State<AppIconButton> createState() => _AppIconButtonState();
}

class _AppIconButtonState extends State<AppIconButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColor.secondary,
        ),
        child: widget.icon,
      ),
    );
  }
}
