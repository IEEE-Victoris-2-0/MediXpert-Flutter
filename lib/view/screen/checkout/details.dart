import 'package:flutter/material.dart';
import 'package:tecdoc/view/screen/checkout/pay.dart';
import 'package:tecdoc/view/widget/cartWidget/backbutton.dart';
import 'package:tecdoc/view/widget/cartWidget/carttext.dart';
import 'package:tecdoc/view/widget/detalisWidget/detailsbutton.dart';
import 'package:tecdoc/view/widget/detalisWidget/detailsfield.dart';

class Detalis extends StatelessWidget {
  const Detalis({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> mykey=GlobalKey<FormState>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0XFFEDE6FE),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(left: 29, top: 62, right: 27),
          child: Form(
            key: mykey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CartBackButton(),
                const SizedBox(
                  height: 12,
                ),
                const CartText(
                  text: 'Checkout',
                ),
                const SizedBox(
                  height: 25,
                ),
                DetalisField(
                    valid: (text) {
                      if (text!.isEmpty) {
                        return "This field is required";
                      }
                      return null;
                    },
                    hintText: '     First name'),
                const SizedBox(
                  height: 25,
                ),
                DetalisField(
                    valid: (text) {
                      if (text!.isEmpty) {
                        return "This field is required";
                      }
                      return null;
                    },
                    hintText: '     Last name'),
                const SizedBox(
                  height: 25,
                ),
                DetalisField(
                    valid: (text) {
                      if (text!.isEmpty) {
                        return "This field is required";
                      }
                      return null;
                    },
                    hintText: '     Email'),
                const SizedBox(
                  height: 25,
                ),
                DetalisField(
                    valid: (text) {
                      if (text!.isEmpty) {
                        return "This field is required";
                      }
                      return null;
                    },
                    hintText: '     Phone'),
                const SizedBox(
                  height: 25,
                ),
                DetalisField(
                    valid: (text) {
                      if (text!.isEmpty) {
                        return "This field is required";
                      }
                      return null;
                    },
                    hintText: '     Address'),
                const SizedBox(
                  height: 25,
                ),
                DetalisField(
                    valid: (text) {
                      if (text!.isEmpty) {
                        return "This field is required";
                      }
                      return null;
                    },
                    hintText: '     City'),
                const SizedBox(
                  height: 25,
                ),
                DetalisField(
                    valid: (text) {
                      if (text!.isEmpty) {
                        return "This field is required";
                      }
                      return null;
                    },
                    hintText: '     State'),
                const SizedBox(
                  height: 25,
                ),
                DetalisField(
                    valid: (text) {
                      if (text!.isEmpty) {
                        return "This field is required";
                      }
                      return null;
                    },
                    hintText: '     Country'),
                const SizedBox(
                  height: 25,
                ),
                DetalisField(
                    valid: (text) {
                      if (text!.isEmpty) {
                        return "This field is required";
                      }
                      return null;
                    },
                    hintText: '     Pincode'),
                const SizedBox(
                  height: 25,
                ),
                 DetailsButton(text: "Continue",onPressed: (){
                  if(mykey.currentState!.validate()){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return const Pay();
                    }));
                  }
                 },),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
