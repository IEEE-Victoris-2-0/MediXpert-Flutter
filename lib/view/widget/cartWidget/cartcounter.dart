import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tecdoc/controller/counterbloc/counter_bloc.dart';

class CartCounter extends StatelessWidget {
  const CartCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      width: 44,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(color: Color.fromRGBO(118, 66, 249, 0.30), blurRadius: 12),
        ],
        color: const Color(0XFFD8C9FF),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
               BlocProvider.of<CounterBloc>(context).add(IncremenEvent());
            },
            child: Container(
              height: 37,
              width: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: const Color(0XFF7642F9),
              ),
              child: const Center(
                child: Text(
                  "+",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
          ),
          BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
            if (state is CounterInitial) {
              return const Text(
                '0',
                style: TextStyle(
                    color: Color(0XFF7642F9),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins'),
              );
            } else if (state is CounterValueChangedState) {
              return Text(
                state.counter.toString(),
                style: const TextStyle(
                    color: Color(0XFF7642F9),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins'),
              );
            } else {
              return const SizedBox();
            }
          }),
          GestureDetector(
            onTap: () {
              BlocProvider.of<CounterBloc>(context).add(DecremenEvent());
            },
            child: Container(
              height: 39,
              width: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: const Color(0XFFC6AEFF),
              ),
              child: const Center(
                child: Text(
                  "-",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
