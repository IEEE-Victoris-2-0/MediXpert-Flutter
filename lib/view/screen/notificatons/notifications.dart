import 'package:flutter/material.dart';
import 'package:tecdoc/core/class/notifications.dart';
import 'package:tecdoc/view/widget/notificatonsWidget/notifications.dart';

class MyNotifications extends StatelessWidget {
  const MyNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(207, 196, 231, 0.49),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 28,
              top: 57,
              right: 31
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
                            Navigator.of(context).pop();
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
                      "Notificatons",
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
                height: 21,
               ),
               ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context,i){
                  final iteam=notiList[i];
                  return  NotiCard(
                  text1: iteam.name,
                  text2: iteam.phname,
                );
                }, 
                separatorBuilder: (context,i){
                  return const SizedBox(
                    height: 21,
                  );
                }, 
                itemCount: notiList.length,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
