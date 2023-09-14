import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tecdoc/view/screen/home.dart';
import 'package:tecdoc/view/widget/authWidget/login/custombuttom.dart';
import 'package:tecdoc/view/widget/authWidget/login/customfield.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 266,
            width: double.infinity,
            child: Stack(
              children: [
                SizedBox(
                  height: 266,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/login22.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 54,
                  ),
                  child: Container(
                    height: 46,
                    width: 59,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 0.42),
                        borderRadius: BorderRadius.circular(13)),
                    child: IconButton(
                      onPressed: () {
                        // Handle the back button tap here, e.g., navigate back.
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_outlined,
                        size: 30, // Adjust the size as needed
                        color: Color.fromRGBO(255, 255, 255, 0.42),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 550,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(100),
                topLeft: Radius.circular(100),
              )
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 27,
                ),
                Text(
                  'Welcome back!',
                  style: TextStyle(
                    color: Color(0xFF7642F9), // Use the desired color
                    fontFamily: 'Poppins', // Use the desired font family
                    fontSize: 25.0, // Use the desired font size
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400, // Use the desired font weight
                    height: 1.0, // Use 1.0 for normal line height
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Login to your account',
                  style: TextStyle(
                    color: Color(0xFFC0C0C0), // Use the desired color
                    fontFamily: 'Poppins', // Use the desired font family
                    fontSize: 12.0, // Use the desired font size
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400, // Use the desired font weight
                    height: 1.0, // Use 1.0 for normal line height
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 34, right: 27),
                  child: CustomField(
                      hinttext: 'Email',
                      iconData: Icons.email,
                      valid: (tect) {
                        return null;
                      }),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 34, right: 27),
                  child: CustomField(
                      hinttext: 'password',
                      iconData: Icons.lock,
                      valid: (tect) {
                        return null;
                      }),
                ),
                SizedBox(
                  height: 9,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 228),
                  child: GestureDetector(
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
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Spacer(),
                    Custombuttom(
                      buttontext: "Sign in",
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                          return Home();
                        }));
                      },
                    ),
                    Spacer(),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: 25,
                    left: 49,
                    right: 49,
                    bottom: 16,
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
                      Spacer(),
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
              ],
            ),
          ),
        ],
      )),
    ));
  }
}
