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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListView.builder(
                    itemCount: notificationList.length,
                    shrinkWrap: true,
                    itemBuilder: (_, i) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Container(
                          width: Get.width * 0.9,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  width: 1, color: Color(0xffDC9727))),
                          // side: const BorderSide(
                          //     width: 1, color: Color(0xffDC9727))

                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: Get.width * 0.62,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Mild Steel Industrial Machine Spare Parts',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            fontFamily: 'inter',
                                            height: 1.3),
                                      ),
                                      Text(
                                        'We are engaged in offering Industrial Machine Spare Parts to our clients. Our range of all products is widely appreciated by our clients.',
                                        style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.9),
                                            fontSize: 12,
                                            fontFamily: 'inter',
                                            height: 1.25),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  notificationList[i].dateTime,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NotificationClass {
  String dateTime;

  NotificationClass({required this.dateTime});
}

List<NotificationClass> notificationList = [
  NotificationClass(dateTime: "1 June 2023\n12:20 PM"),
  NotificationClass(dateTime: "1 May 2023\n12:20 PM"),
  NotificationClass(dateTime: "1 Juy 2023\n12:20 PM"),
  NotificationClass(dateTime: "2 Feb 2023\n12:20 PM"),
];
