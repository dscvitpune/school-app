import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:schoolApp/utils/constant.dart';
import 'package:schoolApp/widgets/CustomAppBar.dart';
import 'package:schoolApp/widgets/CustomButton.dart';
import 'package:schoolApp/widgets/CustomIconButton.dart';
import 'package:schoolApp/widgets/CustomTextField.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isKeyboardVisible = false;
  bool dataAvailable = false;
  String email = "";
  String password = "";
  String name = "";

  @override
  Widget build(BuildContext context) {
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
                      print("Login");
                    },
                    child: Text(
                      "Login",
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
              SizedBox(height: spaceM.h),
              Container(
                child: SvgPicture.asset(
                  'assets/images/signup_illustration.svg',
                  height: isKeyboardVisible ? 100.h : 150.0.h,
                  width: isKeyboardVisible ? 100.h : 150.0.h,
                ),
              ),
              SizedBox(height: spaceM.h),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: paddingL.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Create new account",
                        style: Theme.of(context).textTheme.headline5.copyWith(
                              color: black,
                              fontWeight: FontWeight.bold,
                              fontSize: headline5.ssp,
                              fontFamily: '.SF UI Display',
                            ),
                      ),
                      SizedBox(height: spaceS.h),
                      Text(
                        "Keep your financial data store to our server so that you can access from anywhere you want",
                        style: Theme.of(context).textTheme.subtitle1.copyWith(
                              color: grey,
                              fontSize: subtitle1.ssp,
                              fontFamily: '.SF UI Display',
                            ),
                      ),
                      SizedBox(height: spaceS.h),
                      CustomTextField(
                          labelText: "Your name",
                          hintText: "Your name",
                          onChanged: (value) {
                            setState(() {
                              name = value;
                            });
                          }),
                      SizedBox(height: spaceS),
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
                          SizedBox(width: spaceM.w * 2.w),
                          CustomIconButton(
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 24.w,
                              color: white,
                            ),
                            onPress: () {
                              print("Signup");
                            },
                            isDisable: email.length != 0 &&
                                    password.length >= 8 &&
                                    name.length != 0
                                ? false
                                : true,
                          ),
                        ],
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
                          text: "Sign up with Google",
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
                      SizedBox(height: spaceM.h),
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
