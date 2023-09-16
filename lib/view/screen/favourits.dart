import 'package:flutter/material.dart';
import 'package:tecdoc/core/class/favouritslist.dart';
import 'package:tecdoc/view/widget/favWdget/favcard.dart';

class Favourits extends StatelessWidget {
  const Favourits({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(207, 196, 231, 0.49),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 29,
              top: 53,
              right: 27
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
                      "Favorites",
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
                SizedBox(
                  height: 19,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context,i){
                    final iteams=favlist[i];
                    return FavCard(
                      path: iteams.path, 
                      text1: iteams.text1, 
                      texttwo: iteams.text2, 
                      text3: iteams.text3,
                      );
                  }, 
                  separatorBuilder: (context,i){
                    return SizedBox(
                      height: 38,
                    );
                  }, 
                  itemCount: favlist.length
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
