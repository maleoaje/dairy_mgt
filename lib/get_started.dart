import 'package:dairy_mgt/widgets/dairy_cards.dart';
import 'package:dairy_mgt/widgets/dairy_cards_png.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            stops: [0, .6],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff3CD0FF), Color(0xff4C1FC7)],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: -330,
              child: Transform.rotate(
                angle: -45 * 2.98 / 180,
                child: Container(
                  height: 500,
                  width: 700,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(140),
                    gradient: LinearGradient(
                      stops: const [0.2, 1],
                      tileMode: TileMode.decal,
                      begin: Alignment.topRight,
                      end: Alignment.bottomRight,
                      colors: [
                        const Color.fromARGB(255, 79, 84, 236).withOpacity(.7),
                        const Color(0xff4449D5).withOpacity(.1),
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
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      'assets/logo.png',
                      height: 230,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        DairyCards(
                          name: 'Sales',
                          svg: 'cow',
                        ),
                        DairyCards(
                          name: 'Doctors',
                          svg: 'doctors',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        DairyCards(
                          name: 'Dairy\nManagement',
                          svg: 'mgt',
                        ),
                        DairyCardsPng(
                          name: 'Feed\nManagement',
                          img: 'feed',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    '"All things',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'One place to manage"',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: TextButton(
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(1),
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) =>
                              const Color(0xff37CCFF),
                        ),
                        overlayColor:
                            MaterialStateProperty.all(const Color(0xff37CCFF)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                      ),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(30, 4, 30, 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'GET STARTED',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
