import 'package:flutter/material.dart';
import 'package:tecdoc/view/screen/home.dart';
import 'package:tecdoc/view/screen/ordertrack.dart';

class PayDialog extends StatefulWidget {
  const PayDialog({super.key});

  @override
  State<PayDialog> createState() => _PayDialogState();
}

class _PayDialogState extends State<PayDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      content: SizedBox(
        width: 266,
        height: 249,
        child: Column(
          children: [
            Image.asset('assets/images/right.png'),
            const SizedBox(
              height: 21,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(118, 66, 249, 0.61),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const OrderTrack();
                  }));
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 14),
                  child: Text(
                    'Check Order status',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                  ),
                )),
            const SizedBox(
              height: 17,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(118, 66, 249, 0.61),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const Home();
                  }));
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 14),
                  child: Text(
                    'Continue Shopping',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
