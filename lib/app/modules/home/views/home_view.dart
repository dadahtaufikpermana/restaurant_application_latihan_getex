import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

import '../../../../shares/card_food_widget.dart';
import '../../../../shares/food_card_widget.dart';
import '../../../../shares/styleSchema.dart';
import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  bool isOpened = false;

  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();

  toggleMenu([bool end = false]) {
    if (!end) {
      final state = _sideMenuKey.currentState!;
      if (state.isOpened) {
        state.closeSideMenu();
      } else {
        state.openSideMenu();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SideMenu(
      radius: BorderRadius.circular(30),
      key: _sideMenuKey,
      menu: buildMenu(),
      background: const Color(0xFFFA4A0C),
      type: SideMenuType.shrinkNSlide,
      onChange: (isOpened) {
        // setState(() => isOpened = isOpened);
      },
      child: Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: background,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              toggleMenu();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 42.0),
              child: IconButton(
                  onPressed: () {
                    Get.toNamed(Routes.CART);
                  },
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.grey[400],
                  )),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Delicious \nfood for you",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 28.0,
              ),
              //To add some elevation & border radius to text field need to wrap in Material
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.MENU_FOOD);
                },
                child: Container(
                  height: 60,
                  width: 314,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFFEFEEEE)),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 35, top: 21, bottom: 21),
                        child: SizedBox(
                          height: 18,
                          width: 18,
                          child: Icon(
                            Icons.search_sharp,
                            color: Colors.black,
                            fill: 1.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Container(
                          padding: const EdgeInsets.only(left: 16),
                          child: const Text(
                            "Search",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF000000)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              DefaultTabController(
                length: 4,
                child: Expanded(
                  child: Column(
                    children: [
                      TabBar(
                        indicatorColor: deepOrange800,
                        labelColor: deepOrange800,
                        unselectedLabelColor: grey400,
                        labelPadding:
                        const EdgeInsets.symmetric(horizontal: 8.0),
                        tabs: const [
                          Tab(
                            text: "Foods",
                          ),
                          Tab(
                            text: "Drinks",
                          ),
                          Tab(
                            text: "Snacks",
                          ),
                          Tab(
                            text: "Sauce",
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "see more",
                              style:
                              TextStyle(fontSize: 16, color: deepOrange800),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                          child: TabBarView(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  child: ListView(
                                    padding: EdgeInsets.only(top: 40),
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      FoodCard(
                                          imageFood: "assets/image/ic_food1.png",
                                          title: "Vegie tomato mix"),
                                      SizedBox(
                                        height: 20,
                                        width: 20,
                                      ),
                                      FoodCardWidget(
                                          imageFood: "assets/image/ic_food3.png",
                                          title: "Vegie tomato mix"),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      FoodCardWidget(
                                          imageFood: "assets/image/ic_food4.png",
                                          title: "Vegie tomato mix"),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      FoodCardWidget(
                                          imageFood: "assets/image/ic_food5.png",
                                          title: "Vegie tomato mix"),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: ListView(
                                    padding: EdgeInsets.only(top: 40),
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      FoodCard(
                                          imageFood: "assets/image/ic_food1.png",
                                          title: "Vegie tomato mix"),
                                      SizedBox(
                                        height: 20,
                                        width: 20,
                                      ),
                                      FoodCardWidget(
                                          imageFood: "assets/image/ic_food3.png",
                                          title: "Vegie tomato mix"),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      FoodCardWidget(
                                          imageFood: "assets/image/ic_food4.png",
                                          title: "Vegie tomato mix"),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      FoodCardWidget(
                                          imageFood: "assets/image/ic_food5.png",
                                          title: "Vegie tomato mix"),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: ListView(
                                    padding: EdgeInsets.only(top: 40),
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      FoodCard(
                                          imageFood: "assets/image/ic_food1.png",
                                          title: "Vegie tomato mix"),
                                      SizedBox(
                                        height: 20,
                                        width: 20,
                                      ),
                                      FoodCardWidget(
                                          imageFood: "assets/image/ic_food3.png",
                                          title: "Vegie tomato mix"),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      FoodCardWidget(
                                          imageFood: "assets/image/ic_food4.png",
                                          title: "Vegie tomato mix"),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      FoodCardWidget(
                                          imageFood: "assets/image/ic_food5.png",
                                          title: "Vegie tomato mix"),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: ListView(
                                    padding: EdgeInsets.only(top: 40),
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      FoodCard(
                                          imageFood: "assets/image/ic_food1.png",
                                          title: "Vegie tomato mix"),
                                      SizedBox(
                                        height: 20,
                                        width: 20,
                                      ),
                                      FoodCardWidget(
                                          imageFood: "assets/image/ic_food3.png",
                                          title: "Vegie tomato mix"),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      FoodCardWidget(
                                          imageFood: "assets/image/ic_food4.png",
                                          title: "Vegie tomato mix"),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      FoodCardWidget(
                                          imageFood: "assets/image/ic_food5.png",
                                          title: "Vegie tomato mix"),
                                    ],
                                  ),
                                ),
                              ]))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: deepOrange800,
            unselectedItemColor: grey400,
            items: [
              BottomNavigationBarItem(
                label: "Home",
                icon: IconButton(
                    onPressed: (){
                      Get.toNamed(Routes.HOME);
                    },
                    icon: const Icon(Icons.home)),
              ),
              BottomNavigationBarItem(
                label: "Favorite",
                icon: IconButton(
                    onPressed: (){
                      Get.to(Text("Favorite Page"));
                    },
                    icon: const Icon(Icons.favorite)),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: IconButton(
                    onPressed: (){
                      Get.toNamed(Routes.PROFILE);
                    },
                    icon: const Icon(Icons.person)),
              ),
              BottomNavigationBarItem(
                label: "History",
                icon: IconButton(
                    onPressed: (){
                      Get.toNamed(Routes.HISTORY);
                    },
                    icon: const Icon(Icons.history)),
              ),
            ]),
      ),
    );
  }

  Widget buildMenu() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 39),
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    Get.toNamed(Routes.PROFILE);
                  },
                  leading: const Icon(Icons.account_circle_outlined,
                      size: 20.0, color: Colors.white),
                  title: const Text("Profile",
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  textColor: Colors.white,
                  dense: true,
                ),
                dividerListTile(),
                ListTile(
                  onTap: () {
                    Get.toNamed(Routes.ORDER);
                  },
                  leading: SvgPicture.asset('assets/icon/icon_orders.svg'),
                  title: const Text("Orders",
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  textColor: Colors.white,
                  dense: true,
                ),
                dividerListTile(),
                ListTile(
                  onTap: () {
                    Get.toNamed(Routes.NO_OFFER);
                  },
                  leading: const Icon(Icons.local_offer_outlined,
                      size: 20.0, color: Colors.white),
                  title: const Text("Offers and Promo",
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  textColor: Colors.white,
                  dense: true,
                ),
                dividerListTile(),
                ListTile(
                  onTap: () {},
                  leading:
                  SvgPicture.asset('assets/icon/icon_privacy_policy.svg'),
                  title: const Text("Privacy Policy",
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  textColor: Colors.white,
                  dense: true,
                ),
                dividerListTile(),
                ListTile(
                  onTap: () {},
                  leading: SvgPicture.asset('assets/icon/icon_security.svg'),
                  title: const Text("Security",
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  textColor: Colors.white,
                  dense: true,
                ),
                const SizedBox(
                  height: 204,
                ),
                ListTile(
                  onTap: () {
                    Get.toNamed(Routes.TAB_CONTROLER);
                  },
                  title: Row(
                    children: const [
                      Text("Sign-out",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.arrow_forward, size: 20.0, color: Colors.white)
                    ],
                  ),
                  textColor: Colors.white,
                  dense: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget dividerListTile() {
    return const Divider(color: Color(0xFFF4F4F8), endIndent: 60, indent: 70);
  }
}