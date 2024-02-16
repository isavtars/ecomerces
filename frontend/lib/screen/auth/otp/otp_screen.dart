import 'package:flutter/material.dart';
import 'package:frontend/app/manager/constance/extensions/extension.dart';

import '../../../app/styles/app_colors.dart';
import '../../widgets/custome_btns.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});
  final pinStyle = const TextStyle(fontSize: 32, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            width: double.maxFinite,
            color: primarycolors,
            child: Column(
              // crossAxisAlignment: ,
              children: [
                Center(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Verification Code",
                    style: myTextStyle(
                        textColor, 0.01.toResponsive(context), "Poppinsmedium"),
                  ),
                )),
                SizedBox(
                  height: 0.3.h(context),
                  width: 1.0.w(context),
                  child: Image.asset("assets/images/verification.png"),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Verifications Otp Code",
                  style: myTextStyle(
                      textColor, 0.022.toResponsive(context), "Kalnia"),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "we have send verification to your Email Idwe have send verification to your Email Id",
                  style: myTextStyle(
                      textColor, 0.0099.toResponsive(context), "Poppinsmedium"),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                //focous node
                const OTPFields(),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 0.9.w(context),
                  height: 0.07.h(context),
                  child: CustomBtn(
                    btnTitle: "Done",
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            )),
      ),
    );
  }
}

class OTPFields extends StatefulWidget {
  const OTPFields({
    Key? key,
  }) : super(key: key);

  @override
  OTPFieldsState createState() => OTPFieldsState();
}

class OTPFieldsState extends State<OTPFields> {
  FocusNode? pin2FN;
  FocusNode? pin3FN;
  FocusNode? pin4FN;
  final pinStyle = const TextStyle(
      fontSize: 32, fontWeight: FontWeight.bold, color: inputcolor);

  @override
  void initState() {
    super.initState();
    pin2FN = FocusNode();
    pin3FN = FocusNode();
    pin4FN = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FN?.dispose();
    pin3FN?.dispose();
    pin4FN?.dispose();
  }

  void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 60,
                child: TextFormField(
                  autofocus: true,
                  style: pinStyle,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: inputDecoration,
                  onChanged: (value) {
                    nextField(value, pin2FN);
                  },
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 60,
                child: TextFormField(
                  focusNode: pin2FN,
                  style: pinStyle,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: inputDecoration,
                  onChanged: (value) => nextField(value, pin3FN),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 60,
                child: TextFormField(
                  focusNode: pin3FN,
                  style: pinStyle,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: inputDecoration,
                  onChanged: (value) => nextField(value, pin4FN),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 60,
                child: TextFormField(
                  focusNode: pin4FN,
                  style: pinStyle,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: inputDecoration,
                  onChanged: (value) {
                    if (value.length == 1) {
                      pin4FN!.unfocus();
                    }
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }
}

final inputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(8.0),
  borderSide: BorderSide(color: Colors.grey.shade400),
);
final inputDecoration = InputDecoration(
  contentPadding: const EdgeInsets.symmetric(vertical: 16.0),
  border: inputBorder,
  focusedBorder: inputBorder,
  focusColor: inputcolor,
  enabledBorder: inputBorder,
);
