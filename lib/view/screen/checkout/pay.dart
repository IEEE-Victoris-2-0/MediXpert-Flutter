import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tecdoc/controller/counterbloc/counter_bloc.dart';
import 'package:tecdoc/view/widget/cartWidget/backbutton.dart';
import 'package:tecdoc/view/widget/cartWidget/carttext.dart';
import 'package:tecdoc/view/widget/detalisWidget/detailsbutton.dart';
import 'package:tecdoc/view/widget/detalisWidget/paycard.dart';
import 'package:tecdoc/view/widget/detalisWidget/paydialog.dart';
import 'package:tecdoc/view/widget/detalisWidget/payinfo.dart';
import 'package:tecdoc/view/widget/detalisWidget/paymethod.dart';

class Pay extends StatelessWidget {
  const Pay({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0XFFEDE6FE),
        body: SingleChildScrollView(
            child: Padding(
          padding:
              const EdgeInsets.only(left: 29, top: 46, right: 28, bottom: 51),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CartBackButton(),
              const SizedBox(
                height: 12,
              ),
              const CartText(text: 'Checkout'),
              const SizedBox(
                height: 21,
              ),
              const PayInfo(
                text1: 'Home',
                text2: '+201056432176',
                text3: "New Cairo 16 st.",
              ),
              const SizedBox(
                height: 31,
              ),
              const PayMethod(),
              const SizedBox(
                height: 17,
              ),
              BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  if (state is CounterValueChangedState) {
                    return PayCard(
                        subtotal: state.counter * 350,
                        dilvery: "Free",
                        total: state.counter * 350);
                  } else if (state is CounterInitial) {
                    return const PayCard(
                        subtotal: 0, dilvery: "Free", total: 0);
                  }
                  return const SizedBox();
                },
              ),
              const SizedBox(
                height: 51,
              ),
              DetailsButton(
                text: "Done",
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (cotext) {
                        return const PayDialog();
                      });
                },
              ),
            ],
          ),
        )),
      ),
    );
  }
}
