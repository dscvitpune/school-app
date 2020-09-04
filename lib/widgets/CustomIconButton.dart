import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:schoolApp/utils/constant.dart';

class CustomIconButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPress;
  final bool isDisable;

  const CustomIconButton({
    Key key,
    @required this.child,
    this.onPress,
    this.isDisable = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isDisable ? () {} : onPress ?? () {},
      child: Container(
        padding: EdgeInsets.all(paddingM.ssp),
        decoration: BoxDecoration(
          color: isDisable ? lightGrey : primaryColorDark,
          borderRadius: BorderRadius.circular(18.w),
        ),
        child: Icon(
          Icons.arrow_forward_ios,
          size: 24.w,
          color: white,
        ),
      ),
    );
  }
}
