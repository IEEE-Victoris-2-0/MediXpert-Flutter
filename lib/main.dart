import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tecdoc/api/drugapi/drugapi.dart';
import 'package:tecdoc/api/homeapi/homeapi.dart';
import 'package:tecdoc/api/pharamcyapi/pharamcyapi.dart';
import 'package:tecdoc/api/userapi/api.dart';
import 'package:tecdoc/controller/drugbloc/drug_bloc.dart';
import 'package:tecdoc/controller/homebloc/home_bloc.dart';
import 'package:tecdoc/controller/pharamcybloc/pharamcy_bloc.dart';
import 'package:tecdoc/controller/userbloc/medi_bloc.dart';
import 'package:tecdoc/controller/counterbloc/counter_bloc.dart';
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
        BlocProvider(
            create: (context) => HomeBloc(homeAPI: HomeAPI())
              ..add(HomeDetailsEvent())
              ..add(HomeCategoryEvent())),
        BlocProvider(
            create: (context) => PharamcyBloc(pharamcyAPI: PharamcyAPI())
              ..add(PharamcyDetailsEvent())
              ..add(PharamcyProfileEvent())),
        BlocProvider(
            create: (context) => DrugBloc(drugAPI: DrugAPI())
              ..add(DrugsEvent())
              ..add(DrugDetailsEvent())),
      ],
      child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "midxipert",
          home: ForgetPassword()),
    );
  }
}
