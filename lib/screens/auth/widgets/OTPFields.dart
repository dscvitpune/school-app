import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

typedef void StringCallback(String val);

class OTPFields extends StatefulWidget {
  final StringCallback callback;

  const OTPFields({Key key, this.callback}) : super(key: key);
  @override
  _OTPFieldsState createState() => _OTPFieldsState();
}

class _OTPFieldsState extends State<OTPFields> {
  static const NUM_BOXES = 6;
  List<TextEditingController> _boxControllers = List<TextEditingController>();
  List<FocusNode> _boxFocusNodes = List<FocusNode>();
  List<String> _myVars = List<String>(NUM_BOXES);
  String otpCode;
  @override
  void initState() {
    super.initState();
    for (var i = 0; i < NUM_BOXES; i++) {
      if (_myVars[i] == null) _myVars[i] = "";

      final controller = TextEditingController();
      controller.addListener(() => _onTextChanged(i));
      _boxControllers.add(controller);
      _boxFocusNodes.add(FocusNode());
    }
  }

  void _onTextChanged(int index) {
    String value = _boxControllers[index].text ?? "";
    if (_myVars[index] == value) return;
    _myVars[index] = value;
    if (value.isEmpty) {
      if (index == 0) {
        return;
      }
      FocusScope.of(context).requestFocus(_boxFocusNodes[index - 1]);
      return;
    }

    if (index == 5) {
      final finalOtp = _myVars.reduce((value, element) => value + element);
      widget.callback(finalOtp);
      return;
    }
    FocusScope.of(context).requestFocus(_boxFocusNodes[index + 1]);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(width: 50.w, height: 50.w, child: otpTextField(0)),
          SizedBox(width: 50.w, height: 50.w, child: otpTextField(1)),
          SizedBox(width: 50.w, height: 50.w, child: otpTextField(2)),
          SizedBox(width: 50.w, height: 50.w, child: otpTextField(3)),
          SizedBox(width: 50.w, height: 50.w, child: otpTextField(4)),
          SizedBox(width: 50.w, height: 50.w, child: otpTextField(5)),
        ],
      ),
    );
  }

  Widget otpTextField(int index) {
    return TextFormField(
      controller: _boxControllers[index],
      focusNode: _boxFocusNodes[index],
      keyboardType: TextInputType.phone,
      inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
      textAlign: TextAlign.center,
      maxLength: 1,
      style: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
      ),
      decoration: InputDecoration(counterText: ''),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  // @override
  // void codeUpdated() {
  //   setState(() {
  //     otpCode = code;
  //   });
  // }
}
