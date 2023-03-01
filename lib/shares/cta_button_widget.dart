import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Ctabutton extends StatelessWidget {
  final String screens;
  const Ctabutton({

    Key? key,
    required this.textTitle, required this.screens,
  }) : super(key: key);
  final String textTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 55),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: 70,
              width: 314,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xffFA4A0C),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(4),
                  textStyle: const TextStyle(fontSize: 16),
                ),
                  onPressed: () => Get.toNamed(screens),
                child: Text(
                  textTitle,
                  style: const TextStyle(
                      fontFamily: 'SF Pro',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}