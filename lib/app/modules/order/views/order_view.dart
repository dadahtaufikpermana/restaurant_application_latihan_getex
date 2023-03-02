import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/order_controller.dart';

class OrderView extends GetView<OrderController> {
  const OrderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
            backgroundColor: Colors.white,
            title: const Text(
              "Orders",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            )),
        body: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 180,
              ),
              Container(
                padding: const EdgeInsets.only(top: 50),
                height: 200,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/image/ic_basket.png'))),
              ),
              Container(
                  padding: const EdgeInsets.only(top: 5),
                  child: const Text(
                    "No orders yet",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                  )),
              Container(
                height: 50,
                margin: const EdgeInsets.only(top: 10.0),
                child: const Center(
                  child: Text(
                    "Hit the orange button down \nbelow to create an order",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                ),
              ),
              // const SizedBox(height: 70, width: 314,),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.PROFILE_CHANGE);
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 200.0),
                  height: 70,
                  width: 314,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30), color: Colors.red),
                  child: const Center(
                    child: Text(
                      "Start Ordering",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
