import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.textTitle, required this.screens});

  final String textTitle;
  final String screens;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 314,
      height: 70,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xFFFA4A0C),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
          onPressed: () => Get.toNamed(screens),
        child: Text(
          textTitle,
          style: const TextStyle(color: Color(0xffffffff), fontSize: 17),
        ),
      ),
    );
  }
}