import 'package:flutter/material.dart';

class CustomOrderState extends StatefulWidget {
  const CustomOrderState({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomOrderStateState createState() => _CustomOrderStateState();
}

class _CustomOrderStateState extends State<CustomOrderState> {
  String selectedState = 'Ordered Confirmed'; // Initial selected state

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: 10,
          left: 35,
          child: CustomPaint(
            size: const Size(1.0, 180.0), // Adjust the size as needed
            painter: LinePainter(),
          ),
        ),
        SizedBox(
          height: 400,
          child: Column(children: [
            RadioListTile(
              activeColor: const Color(0xFF7642F9),
              title: const Text('Ordered'),
              value: 'Ordered',
              groupValue: selectedState,
              onChanged: (value) {
                setState(() {
                  selectedState = value.toString();
                });
              },
            ),
            RadioListTile(
              activeColor: const Color(0xFF7642F9),
              title: const Text('Order Confirmed'),
              value: 'Order Confirmed',
              groupValue: selectedState,
              onChanged: (value) {
                setState(() {
                  selectedState = value.toString();
                });
              },
            ),
            RadioListTile(
              activeColor: const Color(0xFF7642F9),
              title: const Text('Order Shipped'),
              value: 'Order Shipped',
              groupValue: selectedState,
              onChanged: (value) {
                setState(() {
                  selectedState = value.toString();
                });
              },
            ),
            RadioListTile(
              activeColor: const Color(0xFF7642F9),
              title: const Text('Delivered'),
              value: 'Delivered',
              groupValue: selectedState,
              onChanged: (value) {
                setState(() {
                  selectedState = value.toString();
                });
              },
            ),
          ]),
        ),
      ],
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.white
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 2.0;

    final Offset start = Offset(size.width / 2, 0);
    final Offset end = Offset(size.width / 2, size.height);

    canvas.drawLine(start, end, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
