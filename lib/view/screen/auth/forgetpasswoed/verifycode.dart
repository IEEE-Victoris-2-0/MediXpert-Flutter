import 'package:flutter/material.dart';
import 'package:tecdoc/view/screen/auth/forgetpasswoed/forgetpassword.dart';
import 'package:tecdoc/view/screen/auth/forgetpasswoed/resetpassword.dart';
import 'package:tecdoc/view/widget/authWidget/login/Forgetpassword/forgetbutton.dart';
import 'package:tecdoc/view/widget/authWidget/login/Forgetpassword/forgetfield.dart';

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
              Spacer(),
              IconButton(
                onPressed: () {
                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                    return ForgetPassword();
                    },),);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xFF7642F9),
                ),
              ),
             Spacer(),
              const Text(
                "Create New Password",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF7642F9)),
              ),
              Spacer(),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const Spacer(),
              SizedBox(
                child: Image.asset("assets/images/verify.png"),
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
          const SizedBox(
            height: 52,
          ),
           Row(
            children: [
              Spacer(),
              ForgetButton(buttontext: "Verify",onPressed: (){
                 Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                    return ResetPassword();
                    },),);
              },),
              Spacer(),
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
