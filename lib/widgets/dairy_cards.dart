import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DairyCards extends StatelessWidget {
  final String name;
  final String svg;
  const DairyCards({
    super.key,
    required this.name,
    required this.svg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135,
      height: 130,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff37CCFF).withOpacity(.5),
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
          SvgPicture.asset('assets/$svg.svg'),
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
