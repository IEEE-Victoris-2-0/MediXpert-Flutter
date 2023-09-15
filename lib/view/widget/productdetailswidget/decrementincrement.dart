import 'package:flutter/material.dart';

class IncrementDecrementContainer extends StatefulWidget {
  const IncrementDecrementContainer({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _IncrementDecrementContainerState createState() =>
      _IncrementDecrementContainerState();
}

class _IncrementDecrementContainerState
    extends State<IncrementDecrementContainer> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      if (count > 0) {
        count--;
      }
      print("Count: $count"); // Add this line for debugging
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 96,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: const Color(0xFFD8C9FF),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(118, 66, 249, 0.3),
            blurRadius: 9,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: increment,
            child: const Text(
              '+',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            count.toString(),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
            onTap: decrement,
            child: const Text(
              '-',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
