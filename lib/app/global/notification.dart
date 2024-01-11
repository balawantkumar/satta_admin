import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:satta_admin/app/global/History/win_History.dart';
import '../../../Widget/contact_us.dart';
import 'colors.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

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
          // endDrawer: custom_drawer(),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: Container(
              child: Text(
                'Notification'.tr,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: appcolor().ambercolor,
                )),
            actions: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Image(
                  image: AssetImage(
                    'assets/images/logo 1.png',
                  ),
                  height: Get.height * 0.08,
                ),
              )
            ],
          ),
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: CustomScrollView(
              slivers: [
                // SliverAppBar(
                //   automaticallyImplyLeading: false,
                //   backgroundColor: Colors.transparent,
                //   expandedHeight: Get.height * 0.09,
                //   // snap: true,
                //   floating: true,
                //   flexibleSpace: FlexibleSpaceBar(
                //     background: Row(
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: [
                //         // Image(
                //         //   image: AssetImage(
                //         //     'assets/images/logo 1.png',
                //         //   ),
                //         //   height: Get.height * 0.08,
                //         // ),
                //         // InkWell(
                //         //   onTap: (){
                //         //     urlController.LaunchUrl();
                //         //   },
                //         //   child: Container(
                //         //     height: Get.height*0.08,
                //         //     width: Get.width*0.27,
                //         //     decoration: BoxDecoration(
                //         //       image: DecorationImage(
                //         //         image: AssetImage('assets/images/674 1.png'),
                //         //         fit: BoxFit.fill,
                //         //       )
                //         //     ),
                //         //   ),
                //         // ),
                //         // InkWell(
                //         //   onTap: () {
                //         //     Get.off(profile_view());
                //         //   },
                //         //   child: Icon(Icons.more_horiz_outlined, color: appcolor().am,)
                //         // ),
                //       ],
                //     ),
                //   ),
                // ),
                SliverList.list(children: [
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: const BorderSide(
                                width: 1, color: Color(0xffDC9727))),
                        color: Colors.black,
                        child: ListTile(
                          trailing: Text(
                            "1 Jun 2024\n12:20 PM",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          title: Text(
                            'Mild Steel Industrial Machine Spare Parts',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text(
                            'We are engaged in offering Industrial Machine Spare Parts to our clients. Our range of all products is widely appreciated by our clients.',
                            style:
                                TextStyle(color: Colors.white.withOpacity(0.9)),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: const BorderSide(
                                width: 1, color: Color(0xffDC9727))),
                        color: Colors.black,
                        elevation: 2,
                        child: ListTile(
                          trailing: Text(
                            "5 May 2024\n01:20 PM",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          title: Text(
                            'Mild Steel Industrial Machine Spare Parts',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text(
                            'We are engaged in offering Industrial Machine Spare Parts to our clients. Our range of all products is widely appreciated by our clients.',
                            style:
                                TextStyle(color: Colors.white.withOpacity(0.9)),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: const BorderSide(
                                width: 1, color: Color(0xffDC9727))),
                        color: Colors.black,
                        child: ListTile(
                          trailing: Text(
                            "1 Feb 2023\n12:20 PM",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          title: Text(
                            'Mild Steel Industrial Machine Spare Parts',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text(
                            'We are engaged in offering Industrial Machine Spare Parts to our clients. Our range of all products is widely appreciated by our clients.',
                            style:
                                TextStyle(color: Colors.white.withOpacity(0.9)),
                          ),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
