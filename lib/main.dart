import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tecdoc/api/api.dart';
import 'package:tecdoc/controller/Signupblock/medi_bloc.dart';
import 'package:tecdoc/controller/counterbloc/counter_bloc.dart';
import 'package:tecdoc/view/screen/auth/forgetpasswoed/forgetpassword.dart';
import 'package:tecdoc/view/screen/cart/cart.dart';
import 'package:tecdoc/view/screen/categories/mom_baby.dart';
import 'package:tecdoc/view/screen/checkout/details.dart';
import 'package:tecdoc/view/screen/checkout/pay.dart';
import 'package:tecdoc/view/screen/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MediBloc(UserAPI()),
        ),
        BlocProvider(create: (context) => CounterBloc()),
      ],
      child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "midxipert",
          home: MomBaby()),
    );
  }
}
