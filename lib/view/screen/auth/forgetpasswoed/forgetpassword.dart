import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tecdoc/view/widget/authWidget/Forgetpassword/forgetdialog.dart';
import 'package:tecdoc/view/widget/authWidget/login/customfield.dart';
import 'package:tecdoc/view/screen/auth/login.dart';
import 'package:tecdoc/view/widget/authWidget/Forgetpassword/forgetbutton.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> myKey = GlobalKey<FormState>();
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            width: double.infinity,
            height: 150,
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 150,
                  child: SvgPicture.asset(
                    'assets/images/wave2.svg',
                    fit: BoxFit.fill,
                  ),
                ),
                const Positioned(
                  left: 130,
                  top: 45,
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
                Positioned(
                  top: 35,
                  left: 35,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) {
                        return const Login();
                      }));
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 38,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/forget.png",
                fit: BoxFit.fill,
              ),
            ],
          ),
          const SizedBox(
            height: 34,
          ),
          const Row(
            children: [
              Spacer(),
              SizedBox(
                height: 30,
                width: 315,
                child: Text(
                  textAlign: TextAlign.center,
                  "Please enter your email address",
                  style: TextStyle(
                      color: Color(0xFFC0C0C0),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Spacer(),
            ],
          ),
          const SizedBox(
            height: 41,
          ),
          Row(
            children: [
              const Spacer(),
              SizedBox(
                height: 66,
                width: 315,
                child: Form(
                  key: myKey,
                  child: CustomField(
                      hinttext: "Email",
                      iconData: Icons.email,
                      valid: (text) {
                        if (text!.isEmpty) {
                          return "This field is required";
                        } else {
                          return null;
                        }
                      }),
                ),
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(
            height: 59,
          ),
          Row(
            children: [
              const Spacer(),
              ForgetButton(
                buttontext: "Send",
                onPressed: () {
                  if (myKey.currentState!.validate()) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const ForgetDialog();
                        });
                  }
                },
              ),
              const Spacer()
            ],
          ),
          const SizedBox(
            height: 99,
          ),
        ],
      ),
    );
  }
}
