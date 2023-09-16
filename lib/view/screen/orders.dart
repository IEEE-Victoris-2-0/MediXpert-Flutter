import 'package:flutter/material.dart';
import 'package:tecdoc/view/screen/home.dart';
import 'package:tecdoc/view/widget/ordersWidget/orderscard.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(207, 196, 231, 0.49),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 29,
              top: 67,
              right: 32,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 43,
                      height: 37,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFFFFFFF).withOpacity(0.37)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 6,
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                              return const Home();
                            }));
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    const Text(
                      "Orders",
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 34,
                ),
                const OrdersCard(
                  path: 'assets/images/cart22.png',
                  textone: 'twinzol 30 eye drops',
                  texttwo: 'by Maria Phara',
                  textthree: 'EGP67.50',
                  state: "Ordered",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
