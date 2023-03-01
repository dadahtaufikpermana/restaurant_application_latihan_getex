import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../shares/styleSchema.dart';
import '../../controllers/home_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFFF5F5F8),
        body: ListView(
          children: [
            SizedBox(
              height: 535,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Email address",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black26)),
                    TextFormField(
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17),
                      decoration: const InputDecoration(
                        hintText: "E-mail",
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text("Password",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black26)),
                    TextFormField(
                      obscureText: true,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17),
                      decoration: const InputDecoration(hintText: "Password"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextButton(
                      onPressed: () => {},
                      style: TextButton.styleFrom(
                        foregroundColor: const Color.fromARGB(255, 250, 74, 12),
                      ),
                      child: const Text("Forgot passcode?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17)),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Get.to(SplashScreen()),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return SplashScreen(
                              );
                            },
                          ),
                        );
                      },
                      child: Center(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 100,
                            vertical: 25,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: deepOrange800,
                          ),
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    )

                      ],
                    ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
