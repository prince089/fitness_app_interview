import 'package:fitness_app/Theme/colors.dart';
import 'package:flutter/material.dart';

class IconButton extends StatefulWidget {
  const IconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });
  // ignore: prefer_typing_uninitialized_variables
  final onPressed;
  final Icon icon;

  @override
  State<IconButton> createState() => _IconButtonState();
}

class _IconButtonState extends State<IconButton> {
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
