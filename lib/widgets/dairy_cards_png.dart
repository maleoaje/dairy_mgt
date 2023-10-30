import 'package:flutter/material.dart';

class DairyCardsPng extends StatelessWidget {
  final String name;
  final String img;
  const DairyCardsPng({
    super.key,
    required this.name,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 145,
      height: 130,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff37CCFF).withOpacity(.7),
            blurStyle: BlurStyle.normal,
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/$img.png',
            height: 64,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Color(0xff1167BD)),
          ),
        ],
      ),
    );
  }
}
