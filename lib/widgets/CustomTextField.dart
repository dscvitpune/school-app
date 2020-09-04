import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:schoolApp/utils/constant.dart';

class CustomTextField extends StatelessWidget {
  final String labelText, hintText;
  final bool obscureText;
  final Function onChanged;
  final String prefixText;
  final int maxLength;
  final bool isEnable;
  final TextInputType keyboardType;
  final List<TextInputFormatter> inputFormatters;

  const CustomTextField(
      {Key key,
      @required this.labelText,
      @required this.hintText,
      this.obscureText,
      @required this.onChanged,
      this.prefixText,
      this.isEnable = true,
      this.maxLength,
      this.keyboardType,
      this.inputFormatters})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: isEnable,
      onChanged: onChanged,
      obscureText: obscureText ?? false,
      obscuringCharacter: '*',
      keyboardType: keyboardType ?? TextInputType.text,
      cursorColor: primaryColorDark,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        prefixText: prefixText ?? "",
        prefixStyle: TextStyle(color: black, fontSize: 18.ssp),
        labelText: labelText,
        hintText: hintText,
        hintStyle: TextStyle(
            color: black.withOpacity(0.2),
            fontSize: headline6.ssp,
            fontFamily: '.SF UI Display',
            height: 2),
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
