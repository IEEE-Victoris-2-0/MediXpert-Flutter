import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tecdoc/view/widget/authWidget/login/customfield.dart';
import 'package:tecdoc/view/screen/auth/forgetpasswoed/forgetpassword.dart';
import 'package:tecdoc/view/widget/authWidget/Forgetpassword/forgetbutton.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  GlobalKey<FormState> myKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 45,
          ),
          Row(
            children: [
              const SizedBox(
                width: 35,
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                    return ForgetPassword();
                  }));
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xFF7642F9),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                " Create New Password",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF7642F9)),
              ),
            ],
          ),
          Row(
            children: [
              const Spacer(),
              SizedBox(
                width: 340,
                height: 327,
                child: SvgPicture.asset("assets/images/reset.svg"),
              ),
              const Spacer(),
            ],
          ),
          Row(
            children: [
              const Spacer(),
              Form(
                  key: myKey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 66,
                        width: 315,
                        child: CustomField(
                            hinttext: "New Password",
                            iconData: Icons.lock,
                            valid: (text) {
                              if (text!.isEmpty) {
                                return "This field is required";
                              } else {
                                return null;
                              }
                            }),
                      ),
                      const SizedBox(
                        height: 29,
                      ),
                      SizedBox(
                        height: 66,
                        width: 315,
                        child: CustomField(
                            hinttext: "Confirm Password",
                            iconData: Icons.lock,
                            valid: (text) {
                              if (text!.isEmpty) {
                                return "This field is required";
                              } else {
                                return null;
                              }
                            }),
                      ),
                    ],
                  )),
              const Spacer(),
            ],
          ),
          const SizedBox(
            height: 123,
          ),
          Row(
            children: [
              const Spacer(),
              ForgetButton(
                buttontext: "Save",
                onPressed: () {
                  myKey.currentState!.validate();
                },
              ),
              const Spacer(),
            ],
          ),
          SizedBox(
            height: 99,
          ),
        ],
      ),
    );
  }
}
