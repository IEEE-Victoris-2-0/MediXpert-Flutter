import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tecdoc/view/screen/auth/forgetpasswoed/forgetpassword.dart';
import 'package:tecdoc/view/screen/layout.dart';
import 'package:tecdoc/view/widget/authWidget/login/divider.dart';
import '../../widget/authWidget/login/backbutton.dart';
import '../../widget/authWidget/login/custombuttom.dart';
import '../../widget/authWidget/login/loginwith.dart';
import '../../widget/authWidget/login/textfield.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> myKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: myKey,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 800,
              width: 400,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Image.asset(
                      "assets/images/login (app).jpg", // Adjust the image path
                      height: 365, // Adjust the height as needed
                      width: 400, // Adjust the width as needed
                      fit: BoxFit.fill, // Use BoxFit.cover to cover the area
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: SvgPicture.asset(
                      "assets/images/medicin.svg",
                      height: 365, // Adjust the height as needed
                      width: 600, // Adjust the width as needed
                      fit: BoxFit.fill,
                    ),
                  ),
                  const Positioned(
                      top: 40, left: 20, child: BackButtonWidget()),
                  Positioned(
                    left: 2,
                    right: 2,
                    top: 250,
                    child: Container(
                      width: 375,
                      height: 550,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 293,
                    left: 89,
                    child: Text(
                      'Welcome back!',
                      style: TextStyle(
                        color: Color(0xFF7642F9), // Use the desired color
                        fontFamily: 'Poppins', // Use the desired font family
                        fontSize: 25.0, // Use the desired font size
                        fontStyle: FontStyle.normal,
                        fontWeight:
                            FontWeight.w400, // Use the desired font weight
                        height: 1.0, // Use 1.0 for normal line height
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 336,
                    left: 119,
                    child: Text(
                      'Login to your account',
                      style: TextStyle(
                        color: Color(0xFFC0C0C0), // Use the desired color
                        fontFamily: 'Poppins', // Use the desired font family
                        fontSize: 12.0, // Use the desired font size
                        fontStyle: FontStyle.normal,
                        fontWeight:
                            FontWeight.w400, // Use the desired font weight
                        height: 1.0, // Use 1.0 for normal line height
                      ),
                    ),
                  ),
                  const Positioned(top: 380, left: 34, child: TextFields()),
                  Positioned(
                    top: 540,
                    left: 228,
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ForgetPassword()), // Replace NextScreen with your screen
                      ),
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Color(0xFFC0C0C0), // Use the desired color
                          fontFamily: 'Inter', // Use the desired font family
                          fontSize: 10.0, // Use the desired font size

                          fontStyle: FontStyle.normal,
                          fontWeight:
                              FontWeight.w400, // Use the desired font weight
                          height: 1.0, // Use 1.0 for normal line height
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 560,
                    left: 130,
                    child: Custombuttom(
                      buttontext: "Sign In",
                      onPressed: () {
                        if (myKey.currentState!.validate()) {
                          // Navigate to the HomeScreen when the button is pressed.
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const LayoutScreen(),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                  const Positioned(
                      top: 630, left: 50, right: 50, child: CustomDivider()),
                  const Positioned(top: 670, left: 80, child: LoginWith())
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
