import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/no_offer_controller.dart';

class NoOfferView extends GetView<NoOfferController> {
  const NoOfferView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: GestureDetector(
            child: Icon( Icons.arrow_back_ios, color: Colors.black,  ),
          ),
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFFF5F5F8),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "My Offers",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 200,
                  ),
                  const Text(
                    "Oh Snap! No Offers Yet",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 34,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Bella doesn't have any offers",
                      style: TextStyle(fontSize: 18, color: Colors.black26)),
                  const Text("yet please check again.",
                      style: TextStyle(fontSize: 18, color: Colors.black26)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
