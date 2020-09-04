import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:schoolApp/screens/auth/widgets/OTPFields.dart';
import 'package:schoolApp/utils/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:schoolApp/widgets/CustomAppBar.dart';
import 'package:schoolApp/widgets/CustomButton.dart';
import 'package:schoolApp/widgets/CustomLeading.dart';
import 'package:schoolApp/widgets/CustomTextField.dart';

class PhoneVerificationScreen extends StatefulWidget {
  @override
  _PhoneVerificationScreenState createState() =>
      _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
  bool isKeyboardVisible = false;
  String phoneNumber = "";
  String otp = "";
  bool isPhoneEntered = false;
  String buttonText = "Send verification code";
  String titleText = "Enter your phone number";
  String subText =
      "We will send a code to your number. Standard data charge may apply";

  @override
  Widget build(BuildContext context) {
    // print('ViewInsetst:${MediaQuery.of(context).viewInsets.bottom}');
    isKeyboardVisible =
        MediaQuery.of(context).viewInsets.bottom > 0 ? true : false;
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(
                leading: CustomLeading(
                  onPress: () {
                    //TODO: Close screen function
                  },
                  child: Icon(
                    Icons.close,
                    size: 24.ssp,
                  ),
                ),
                title: "School App",
              ),
              SizedBox(height: spaceS.h * 2.h),
              Container(
                child: SvgPicture.asset(
                  'assets/images/login_illustration.svg',
                  height: isKeyboardVisible ? 100.h : 200.0.h,
                  width: isKeyboardVisible ? 100.h : 200.0.h,
                ),
              ),
              SizedBox(height: spaceM.h * 2.h),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: paddingL.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        isPhoneEntered
                            ? "Enter verification code"
                            : "Enter your phone number",
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              color: black,
                              fontWeight: FontWeight.bold,
                              fontSize: headline6.ssp,
                              fontFamily: '.SF UI Display',
                            ),
                      ),
                      SizedBox(height: spaceS.h * 2.h),
                      Text(
                        isPhoneEntered
                            ? "A verification code is sent to your provided number"
                            : "We will send a code to your number. Standard data charge may apply",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            .copyWith(color: grey),
                      ),
                      SizedBox(height: spaceS.h * 2.h),
                      Stack(
                        children: [
                          CustomTextField(
                              labelText: "Phone Number",
                              hintText: "9876543210",
                              prefixText: "+91 ",
                              isEnable: !isPhoneEntered,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(10),
                                WhitelistingTextInputFormatter.digitsOnly,
                              ],
                              onChanged: (value) {
                                setState(() {
                                  phoneNumber = value;
                                });
                              }),
                          isPhoneEntered
                              ? Positioned(
                                  bottom: 0.0,
                                  right: 0.0,
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isPhoneEntered = false;
                                      });
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.all(paddingM.w),
                                      child: Icon(
                                        Icons.edit,
                                        color: primaryColorDark,
                                        size: 24.ssp,
                                      ),
                                    ),
                                  ),
                                )
                              : Container(),
                        ],
                      ),
                      SizedBox(height: spaceS),
                      isPhoneEntered
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Verification code",
                                  style: TextStyle(
                                    color: primaryColorDark,
                                    fontSize: subtitle1.ssp,
                                    fontFamily: '.SF UI Display',
                                    height: 2,
                                  ),
                                ),
                                OTPFields(
                                  callback: (otpValue) {
                                    setState(() {
                                      otp = otpValue;
                                    });
                                  },
                                ),
                              ],
                            )
                          : Container(),
                      SizedBox(height: spaceM.h * 2.w),
                      CustomButton(
                        onPressed: () {
                          if (!isPhoneEntered) {
                            if (phoneNumber.length == 10) {
                              setState(() {
                                isPhoneEntered = true;
                              });
                            }
                          } else {
                            //TODO: Verify code
                            print("OTP $otp");
                          }
                        },
                        text: isPhoneEntered
                            ? "Verify number"
                            : "Send verification code",
                        backgroundColor: primaryColorDark,
                        padding: EdgeInsets.all(paddingM),
                        fontSize: 18.0.ssp,
                        width: (MediaQuery.of(context).size.width -
                            (2 * spaceM.w)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
