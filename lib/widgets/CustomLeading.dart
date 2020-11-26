import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:schoolApp/utils/constant.dart';

class CustomLeading extends StatelessWidget {
  final VoidCallback onPress;
  final Widget child;

  const CustomLeading({Key key, @required this.onPress, this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress ?? () => {},
      child: Padding(
        padding: EdgeInsets.only(right: paddingM.w),
        child: child,
      ),
    );
  }
}
