import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:schoolApp/utils/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:schoolApp/widgets/CustomAppBar.dart';
import 'package:schoolApp/widgets/CustomButton.dart';
import 'package:schoolApp/widgets/CustomIconButton.dart';
import 'package:schoolApp/widgets/CustomTextField.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isKeyboardVisible = false;
  bool dataAvailable = false;
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    print('ViewInsetst:${MediaQuery.of(context).viewInsets.bottom}');
    isKeyboardVisible =
        MediaQuery.of(context).viewInsets.bottom > 0 ? true : false;
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(
                title: "School App",
                actions: <Widget>[
                  GestureDetector(
                    onTap: () {
                      print("Signup");
                    },
                    child: Text(
                      "Sign Up",
                      style: Theme.of(context).textTheme.subtitle1.copyWith(
                            color: primaryColorDark,
                            fontWeight: FontWeight.bold,
                            fontFamily: '.SF UI Text',
                            fontSize: subtitle1.ssp,
                          ),
                    ),
                  ),
                ],
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
                        "Login to your account",
                        style: Theme.of(context).textTheme.headline5.copyWith(
                              color: black,
                              fontWeight: FontWeight.bold,
                              fontSize: headline5.ssp,
                              fontFamily: '.SF UI Display',
                            ),
                      ),
                      SizedBox(height: spaceS.h * 2.h),
                      CustomTextField(
                          labelText: "Email",
                          hintText: "name@domain.com",
                          onChanged: (value) {
                            setState(() {
                              email = value;
                            });
                          }),
                      SizedBox(height: spaceS),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: CustomTextField(
                                labelText: "Password",
                                hintText: "********",
                                obscureText: true,
                                onChanged: (value) {
                                  setState(() {
                                    password = value;
                                  });
                                }),
                          ),
                          SizedBox(width: spaceM.w * 3.w),
                          CustomIconButton(
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 24.w,
                              color: white,
                            ),
                            onPress: () {
                              print("Login");
                            },
                            isDisable: email.length != 0 && password.length >= 8
                                ? false
                                : true,
                          ),
                        ],
                      ),
                      SizedBox(height: spaceS.h * 3.h),
                      GestureDetector(
                        onTap: () {
                          //TODO: Navigate to phone verification screen
                        },
                        child: Text("Try with Phone Number?",
                            style: Theme.of(context).textTheme.caption.copyWith(
                                color: primaryColorDark,
                                fontSize: caption.ssp)),
                      ),
                      SizedBox(height: spaceS.h),
                      Row(children: <Widget>[
                        Expanded(
                          child: Container(
                              margin:
                                  EdgeInsets.only(left: 10.0.w, right: 15.0.w),
                              child: Divider(
                                color: grey,
                                height: 50.h,
                              )),
                        ),
                        Text(
                          "OR",
                          style: TextStyle(
                            color: grey,
                            fontSize: caption.ssp,
                            fontFamily: '.SF UI Display',
                          ),
                        ),
                        Expanded(
                          child: Container(
                              margin:
                                  EdgeInsets.only(left: 15.0.w, right: 10.0.w),
                              child: Divider(
                                color: grey,
                                height: 50.h,
                              )),
                        ),
                      ]),
                      SizedBox(height: spaceS.h),
                      Align(
                        alignment: Alignment.center,
                        child: CustomButton(
                          text: "Sign in with Google",
                          borderColor: googleColor,
                          textColor: googleColor,
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            "assets/images/google_logo.svg",
                            width: 28.h,
                            height: 28.h,
                          ),
                        ),
                      ),
                      SizedBox(height: spaceS.h * 2.h),
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
