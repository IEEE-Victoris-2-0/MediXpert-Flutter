import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tecdoc/view/widget/auth/Forgetpassword/forgetbutton.dart';
import 'package:tecdoc/view/widget/auth/Forgetpassword/forgetfield.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

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
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xFF7642F9),
                ),
              ),
              const SizedBox(
                width: 52,
              ),
              const Text(
                "Verify your Email",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF7642F9)),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const Spacer(),
              SizedBox(
                child: SvgPicture.asset("assets/images/verify.svg"),
              ),
              const Spacer(),
            ],
          ),
          const Row(
            children: [
              Spacer(),
              Text(
                "Please Enter The 6 Diagate code",
                style: TextStyle(
                    color: Color(0xFFC0C0C0),
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              Spacer(),
            ],
          ),
          const Row(
            children: [
              Spacer(),
              Text(
                "Sent to your email",
                style: TextStyle(
                    color: Color(0xFFC0C0C0),
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              Spacer(),
            ],
          ),
          const SizedBox(
            height: 55,
          ),
          Row(
            children: [
              const Spacer(),
              ForgetField(valid: (text) {
                return null;
              }),
              const SizedBox(
                width: 10,
              ),
              ForgetField(valid: (text) {
                return null;
              }),
              const SizedBox(
                width: 10,
              ),
              ForgetField(valid: (text) {
                return null;
              }),
              const SizedBox(
                width: 10,
              ),
              ForgetField(valid: (text) {
                return null;
              }),
              const SizedBox(
                width: 10,
              ),
              ForgetField(valid: (text) {
                return null;
              }),
              const SizedBox(
                width: 10,
              ),
              ForgetField(valid: (text) {
                return null;
              }),
              const SizedBox(
                width: 10,
              ),
              ForgetField(valid: (text) {
                return null;
              }),
              const Spacer(),
            ],
          ),
          const SizedBox(
            height: 69,
          ),
          Row(
            children: [
              const Spacer(),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Resend code',
                    style: TextStyle(
                        color: Color(0xFF7642F9),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        decorationStyle: TextDecorationStyle.solid,
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xFF7642F9),
                        decorationThickness: 2),
                  )),
              const Spacer(),
            ],
          ),
          SizedBox(
            height: 52,
          ),
          Row(
            children: [
              Spacer(),
              ForgetButton(buttontext: "Verify"),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
