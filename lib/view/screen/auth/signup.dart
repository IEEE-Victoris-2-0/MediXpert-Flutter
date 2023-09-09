// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:tecdoc/core/shared/custombuttom.dart';
import 'package:tecdoc/core/shared/customfield.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  GlobalKey<FormState> myKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 160,
                width: double.infinity,
                child: SvgPicture.asset(
                  'assets/images/wave.svg',
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 37, left: 21),
                child: Image.asset('assets/images/logo1.png'),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  left: 121,
                  right: 128,
                  top: 21,
                ),
                child: const Text(
                  "Welcome!",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                      color: Color(0xFF7642F9)),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  right: 110,
                  left: 109,
                  bottom: 21,
                ),
                child: const Text(
                  "Create your account",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Color(0xFFC0C0C0)),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  right: 30,
                  left: 31,
                ),
                child: Form(
                  key: myKey,
                  child: Column(
                    children: [
                      CustomField(
                        hinttext: "username",
                        iconData: Icons.person,
                        valid: (text) {
                          if (text!.length == 0) {
                            return "This field is required";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      CustomField(
                        hinttext: "email",
                        iconData: Icons.email,
                        valid: (text) {
                          if (text!.length == 0) {
                            return "This field is required";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      CustomField(
                          hinttext: "password",
                          iconData: Icons.lock,
                          valid: (text) {
                            if (text!.length == 0) {
                              return "This field is required";
                            } else {
                              return null;
                            }
                          }),
                      const SizedBox(
                        height: 14,
                      ),
                      CustomField(
                          hinttext: "Phone number",
                          iconData: Icons.call,
                          valid: (text) {
                            if (text!.length == 0) {
                              return "This field is required";
                            } else {
                              return null;
                            }
                          }),
                    ],
                  ),
                ),
              ),
              Custombuttom(
                buttontext: "Sign Up",
                onPressed: () {
                  myKey.currentState!.validate();
                },
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 49,
                  right: 49,
                  bottom: 19,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.black,
                        height: 25,
                        indent: 5,
                        endIndent: 5,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                      width: 75,
                      child: Text(
                        "Or sign in with",
                        style: TextStyle(
                            color: Color(0xFFB8B8B8),
                            fontWeight: FontWeight.w400,
                            fontSize: 10),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.black,
                        height: 25,
                        indent: 5,
                        endIndent: 5,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 83,
                  right: 83,
                  bottom: 23,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundColor:
                            const Color(0xFFC8B3FC).withOpacity(0.35),
                        radius: 26,
                        child: SvgPicture.asset(
                          "assets/images/facebook.svg",
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 105,
                    ),
                    InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundColor: const Color(
                          0xFFC8B3FC,
                        ).withOpacity(0.35),
                        radius: 26,
                        child: SvgPicture.asset(
                          "assets/images/google.svg",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 109,
                  right: 108,
                ),
                child: Text(
                  "Already have an account?",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFC0C0C0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 169,
                  right: 166,
                ),
                child: InkWell(
                  onTap: () {},
                  child: const Text(
                    "Sign in",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF0078D7),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
