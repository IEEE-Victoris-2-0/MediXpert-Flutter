import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tecdoc/controller/counterbloc/counter_bloc.dart';
import 'package:tecdoc/view/widget/cartWidget/backbutton.dart';
import 'package:tecdoc/view/widget/cartWidget/cartcard.dart';
import 'package:tecdoc/view/widget/cartWidget/cartfield.dart';
import 'package:tecdoc/view/widget/cartWidget/cartpay.dart';
import 'package:tecdoc/view/widget/cartWidget/carttext.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 28,
            top: 41,
            right: 37,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CartBackButton(),
              const SizedBox(
                height: 20,
              ),
              const CartText(
                text: 'Your Cart',
              ),
              const SizedBox(
                height: 20,
              ),
              const CartCard(
                path: 'assets/images/cart22.png',
                textone: 'twinzol eye drops',
                texttwo: 'by Maria Phara',
                textthree: 'EGP67.50',
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 16,
              ),
              const CartField(),
              const SizedBox(
                height: 15,
              ),
              BlocBuilder<CounterBloc, CounterState>(           builder: (context, state) {
                  if(state is CounterValueChangedState){
                    return CartPay(
                    subtotal: state.counter*67,
                    dilvery: 'Free',
                    total: state.counter*67,
                  );
                  }else if(state is CounterInitial){
                     return const CartPay(
                    subtotal: 0,
                    dilvery: 'Free',
                    total: 0,
                  );
                  }
                  return const SizedBox();
                },
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
