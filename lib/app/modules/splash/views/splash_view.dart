import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../shares/styleSchema.dart';
import '../../../routes/app_pages.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: deepRed700,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 40),
            child: CircleAvatar(
              // backgroundImage: AssetImage('assets/image/logormv.png'),
              // backgroundColor: Colors.white,
              // radius: 40,
              backgroundColor: Colors.white,
              radius: 40,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/image/ic_bella_logo.png'),
                backgroundColor: Colors.white,
                radius: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40),
            child: const Text(
              'Food For Everyone',
              style: TextStyle(
                fontSize: 60,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Stack(children: [
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Image.asset(
                      'assets/image/ic_face1.png',
                      scale: 1,
                    )),
                Image.asset('assets/image/ic_face2.png', scale: 1.1),
              ]),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => Get.toNamed(Routes.TAB_CONTROLER),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 25,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.white,
                  ),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: deepRed700),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
