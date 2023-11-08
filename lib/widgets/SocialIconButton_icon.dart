import 'package:flutter/material.dart';

class SocialIconButton1 extends StatelessWidget {
  const SocialIconButton1({
    Key? key,
    required this.icon,
    this.onPressed,
  }) : super(key: key);

  final Icon icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(50),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(50),
        child: Container(width: 30, height: 30, child: icon),
      ),
    );
  }
}



