import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:satta_admin/app/game/view/game_view.dart';
import 'package:satta_admin/app/global/colors.dart';
import 'package:satta_admin/app/global/custom_drawer.dart';

class all_game_view extends StatelessWidget {
  all_game_view({super.key});

  // urlLauncherController urlController = Get.put(urlLauncherController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/background 1.png',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
          // appBar: AppBar(
          //   leading: Icon(Icons.menu,color: Colors.yellow,),
          //   automaticallyImplyLeading: [],
          // ),
          endDrawer: custom_drawer(),
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: Colors.transparent,
                  expandedHeight: Get.height * 0.09,
                  // snap: true,
                  floating: true,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                          image: AssetImage(
                            'assets/images/logo 1.png',
                          ),
                          height: Get.height * 0.08,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 9, bottom: 15),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xffDC9727),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            height: 30,
                            width: 30,

                            //  child: Icon(Icons.menu,color: Colors.yellow,),
                          ),
                        )
                        // InkWell(
                        //   onTap: (){
                        //     urlController.LaunchUrl();
                        //   },
                        //   child: Container(
                        //     height: Get.height*0.08,
                        //     width: Get.width*0.27,
                        //     decoration: BoxDecoration(
                        //       image: DecorationImage(
                        //         image: AssetImage('assets/images/674 1.png'),
                        //         fit: BoxFit.fill,
                        //       )
                        //     ),
                        //   ),
                        // ),
                        // InkWell(
                        //   onTap: () {
                        //     Get.off(profile_view());
                        //   },
                        //   child: Icon(Icons.more_horiz_outlined, color: appcolor().am,)
                        // ),
                      ],
                    ),
                  ),
                ),
                SliverList.list(
                  children: [
                    Divider(
                      color: appcolor().ambercolor,
                      thickness: 1,
                    ),
                    Center(
                        child: Text(
                      'Results : City',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    // 1-10
                    customContainer('Delhi', () {
                      // Get.to(game_view());
                    }, () {}),

                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    // 1-10
                    customContainer('Noida', () {
                      // Get.to(game_view());
                    }, () {}),

                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    // 1-10
                    customContainer('Gaz', () {}, () {}),

                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    // 1-10
                    customContainer('Rohtak', () {}, () {}),

                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    // 1-10
                    customContainer('Mumbai', () {}, () {}),

                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    // 1-10
                    customContainer('Kashmir', () {}, () {}),

                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    // 1-10
                    customContainer('UP', () {}, () {}),

                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    // 1-10
                    customContainer('Bihar', () {}, () {}),

                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    // 1-10
                    customContainer('Lucknow', () {}, () {}),

                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    // 1-10
                    customContainer('Noida', () {}, () {}),

                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    customContainer('UP', () {}, () {}),

                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    // 1-10
                    customContainer('Bihar', () {}, () {}),

                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    // 1-10
                    customContainer('Lucknow', () {}, () {}),

                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    // 1-10
                    customContainer('Noida', () {}, () {}),

                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    // Center(
                    //   child: Container(
                    //     child: Text(
                    //       'Helpline No: +91 12345 56787',
                    //       style: TextStyle(
                    //           color: appcolor().ambercolor, fontSize: 16),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customContainer(
      String CityName, Callback openCallBack, Callback closeCallback) {
    return InkWell(
      onTap: () {
        Get.to(game_view());
      },
      child: Container(
        width: Get.width,
        padding: EdgeInsets.symmetric(
          vertical: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black,
          border: Border.all(
            color: appcolor().ambercolor,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              '${CityName}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            Text(
              'Open'.tr,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'Close'.tr,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
