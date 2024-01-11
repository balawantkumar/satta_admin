import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:satta_admin/app/global/History/payHistory.dart';
import 'package:satta_admin/app/global/History/win_History.dart';
import '../../../Widget/contact_us.dart';
import '../colors.dart';
import '../custom_drawer.dart';
import 'Bid_history.dart';
import 'activeHistory.dart';
import 'block_User.dart';

class History_view extends StatelessWidget {
  const History_view({super.key});

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
            title:   Image(
              image: AssetImage(
                'assets/images/logo 1.png',
              ),
              height: Get.height * 0.08,
            ),
            leading: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios,color: appcolor().ambercolor,)),
          ),
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: CustomScrollView(
              slivers: [

                SliverList.list(children: [
                  SizedBox(
                    height: Get.height * 0.1,
                  ),
                  Column(
                    children: [
                      Container(
                        child: Text(
                          'History'.tr,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      SizedBox( height: Get.height * 0.015,),

                      InkWell(
                        onTap: (){
                          Get.to(ActiveHistoryScreen());
                        },
                        child: Container(
                          margin:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 4),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Row(
                                children: [
                                  Icon(Icons.assignment_late,color: appcolor().ambercolor,),
                                  SizedBox(width: 5,),
                                  Text(
                                    'Active User'.tr,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.history,
                                color: appcolor().ambercolor,
                              )
                            ],
                          ).paddingSymmetric(
                            horizontal: 15,
                          ),
                        ),
                      ),

                      InkWell(
                        onTap: () {
                          Get.to(BlockUserScreen());
                        },
                        child: Container(
                          margin:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 4),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.person, color: appcolor().ambercolor,),
                                  SizedBox(width: 5,),
                                  Text(
                                    'Block User'.tr,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.history,
                                color: appcolor().ambercolor,
                              )
                            ],
                          ).paddingSymmetric(
                            horizontal: 15,
                          ),
                        ),
                      ),




                      InkWell(
                        onTap: () {
                          Get.to(Bid_History_view());
                        },
                        child: Container(
                          margin:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 4),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.h_mobiledata, color: appcolor().ambercolor,),
                                  SizedBox(width: 5,),
                                  Text(
                                    'Bid History'.tr,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.history,
                                color: appcolor().ambercolor,
                              )
                            ],
                          ).paddingSymmetric(
                            horizontal: 15,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(Win_History_view());
                        },
                        child: Container(
                          margin:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 4),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.history_edu,color: appcolor().ambercolor,),
                                  SizedBox(width: 5,),
                                  Text(
                                    'Win History'.tr,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.history,
                                color: appcolor().ambercolor,
                              )
                            ],
                          ).paddingSymmetric(
                            horizontal: 15,
                          ),
                        ),
                      ),

                      InkWell(
                        onTap: (){
                          Get.to(PayHistoryScreen());
                        },
                        child: Container(
                          margin:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 4),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.payment,color: appcolor().ambercolor,),
                                  SizedBox(width: 5,),
                                  Text(
                                    'Pay History'.tr,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.history,
                                color: appcolor().ambercolor,
                              )
                            ],
                          ).paddingSymmetric(
                            horizontal: 15,
                          ),
                        ),
                      ),







                      // SizedBox(
                      //   height: Get.height * 0.35,
                      // ),

                      SizedBox(
                        height: Get.height * 0.25,
                      ),

                      // contactUs_Widget(),
                    ],
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

