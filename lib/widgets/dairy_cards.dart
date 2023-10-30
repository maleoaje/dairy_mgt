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
      width: 145,
      height: 130,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
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
