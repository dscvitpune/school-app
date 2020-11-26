import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:schoolApp/utils/constant.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final Widget icon;
  final EdgeInsetsGeometry padding;
  final double fontSize, width;

  const CustomButton({
    Key key,
    @required this.onPressed,
    @required this.text,
    this.backgroundColor,
    this.textColor,
    this.borderColor,
    this.icon,
    this.padding,
    this.fontSize,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: width ?? (MediaQuery.of(context).size.width - (8 * spaceM.w)),
      ),
      child: FlatButton(
        onPressed: onPressed,
        color: backgroundColor != null ? backgroundColor : Colors.transparent,
        padding: padding ?? EdgeInsets.all((paddingM - paddingS / 2).w),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0.w),
          side: BorderSide(
              color: borderColor ?? backgroundColor ?? primaryColorDark,
              width: 1,
              style: BorderStyle.solid),
        ),
        child: icon != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  icon,
                  SizedBox(
                    width: spaceM.w,
                  ),
                  Text(
                    text,
                    style: Theme.of(context).textTheme.subtitle2.copyWith(
                          color: textColor != null ? textColor : white,
                          fontWeight: FontWeight.w500,
                          fontSize: fontSize ?? 16.0.ssp,
                          fontFamily: '.SF UI Text',
                        ),
                  ),
                ],
              )
            : Text(
                text,
                style: Theme.of(context).textTheme.subtitle2.copyWith(
                      color: textColor != null ? textColor : white,
                      fontWeight: FontWeight.w500,
                      fontSize: fontSize ?? 16.0.ssp,
                      fontFamily: '.SF UI Text',
                    ),
              ),
      ),
    );
  }
}
