import 'package:flutter/material.dart';
import 'package:tecdoc/view/screen/auth/forgetpasswoed/resetpassword.dart';

class ForgetDialog extends StatefulWidget {
  const ForgetDialog({super.key});

  @override
  State<ForgetDialog> createState() => _ForgetDialogState();
}

class _ForgetDialogState extends State<ForgetDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      content: SizedBox(
        width: 276,
        height: 143,
        child: Column(
          children: [
            const Spacer(),
            const Text(
              'Check Your Mail',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
                color: Color(0XFF7642F9),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFF7642F9),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return const ResetPassword();
                  }));
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                  child: Text(
                    'OK',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                  ),
                )),
                const Spacer(),
          ],
        ),
      ),
    );
  }
}
