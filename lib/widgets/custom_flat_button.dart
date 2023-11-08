import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomFlatButton extends StatelessWidget {
  const CustomFlatButton({
    Key? key,
    required this.onTap,
    this.label,
    this.isPreferable = false,
  }) : super(key: key);

  final Function onTap;
  final String? label;
  final bool isPreferable;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap as void Function()?,
        borderRadius: BorderRadius.circular(50),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
            color: Colors.blue.shade300,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/bag.svg',
                width: 5,
                color: Theme.of(context).primaryColor,
              ),
              const SizedBox(width: 15),
              Text(
                label ?? '',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
