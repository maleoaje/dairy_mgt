import 'dart:async';

import 'package:dairy_mgt/get_started.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(seconds: 2),
      (() => Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const GetStarted()),
          (Route<dynamic> route) => false)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              stops: [0, .4],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff3CD0FF), Color(0xff4C1FC7)],
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 20,
                left: -250,
                child: Transform.rotate(
                  angle: -45 * 2.98 / 180,
                  child: Container(
                    height: 300,
                    width: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(140),
                      gradient: LinearGradient(
                        stops: const [0.1, .7],
                        tileMode: TileMode.decal,
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          const Color(0xff4449D5).withOpacity(.15),
                          const Color(0xff4449D5).withOpacity(.15),
                        ],
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(21, 0, 0, 0),
                          blurStyle: BlurStyle.normal,
                          spreadRadius: .9,
                          blurRadius: 20,
                          offset: Offset(10, 10),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 180),
                    child: Center(
                      child: Image.asset(
                        'assets/logo.png',
                        height: 230,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xff37CCFF),
                        radius: 5,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      CircleAvatar(
                        backgroundColor: Color(0xff37CCFF),
                        radius: 5,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      CircleAvatar(
                        backgroundColor: Color(0xff37CCFF),
                        radius: 5,
                      ),
                    ],
                  )
                ],
              ),
              Positioned(
                bottom: 0,
                child: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return const RadialGradient(
                      center: Alignment.center,
                      radius: 1.0,
                      colors: [Colors.black, Colors.black],
                      stops: [0.0, 1.0],
                    ).createShader(bounds);
                  },
                  blendMode: BlendMode.dst,
                  child: SvgPicture.asset(
                    "assets/rect_bottom.svg",
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
