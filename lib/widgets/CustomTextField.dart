import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:schoolApp/utils/constant.dart';

class CustomTextField extends StatelessWidget {
  final String labelText, hintText;
  final bool obscureText;
  final Function onChanged;

  const CustomTextField(
      {Key key,
      @required this.labelText,
      @required this.hintText,
      this.obscureText,
      @required this.onChanged})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      obscureText: obscureText ?? false,
      obscuringCharacter: '*',
      cursorColor: primaryColorDark,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        hintStyle: TextStyle(
          color: black.withOpacity(0.2),
          fontSize: headline6.ssp,
          fontFamily: '.SF UI Display',
        ),
        labelStyle: TextStyle(
          fontSize: headline6.ssp,
          fontFamily: '.SF UI Display',
        ),
      ),
      style: Theme.of(context).textTheme.headline6.copyWith(
            color: black,
            fontSize: headline6.ssp,
            fontWeight: FontWeight.w500,
            fontFamily: '.SF UI Display',
          ),
    );
  }
}
