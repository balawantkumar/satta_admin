import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Widget/contact_us.dart';
import '../colors.dart';
import '../custom_drawer.dart';
import 'Controller/BidHistoryController.dart';

class Bid_History_view extends StatelessWidget {
  Bid_History_view({super.key});

  bid_history_controller controller = Get.put(bid_history_controller());

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
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: Container(
              child: Text(
                'Bid History'.tr,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            // Image(
            //   image: AssetImage(
            //     'assets/images/logo 1.png',
            //   ),
            //   height: Get.height * 0.08,
            // ),
            leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: appcolor().ambercolor,
                )),
          ),
          // endDrawer: custom_drawer(),
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: CustomScrollView(
              slivers: [

                SliverList.list(children: [
                  // SizedBox(
                  //   height: Get.height * 0.2,
                  // ),
                  // SizedBox(height: 10,),
                  Column(
                    children: [
                      // Container(
                      //   child: Text(
                      //     'Bid History'.tr,
                      //     style: TextStyle(
                      //       color: Colors.white,
                      //       fontSize: 30,
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              controller.showdatepickerstart(context);
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 4),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Obx(
                                    () => controller.startdate.value == ''
                                        ? Text(
                                            'Start Date'.tr,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                            ),
                                          )
                                        : Text(
                                            '${controller.startdate.value}',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                            ),
                                          ),
                                  ),
                                  Icon(
                                    Icons.date_range,
                                    color: appcolor().ambercolor,
                                  )
                                ],
                              ).paddingSymmetric(
                                horizontal: 14,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              controller.showdatepickerend(context);
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 4),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Obx(
                                    () => controller.enddate.value == ''
                                        ? Text(
                                            'End Date'.tr,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                            ),
                                          )
                                        : Text(
                                            '${controller.enddate.value}',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                            ),
                                          ),
                                  ),
                                  Icon(
                                    Icons.date_range,
                                    color: appcolor().ambercolor,
                                  )
                                ],
                              ).paddingSymmetric(
                                horizontal: 14,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.all(
                                5,
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  5,
                                ),
                                color: appcolor().ambercolor,
                              ),
                              child: Text(
                                'Submit'.tr,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),


                      SizedBox(
                        height: 10,
                      ),

                      Table(
                        border: TableBorder.all(color: Colors.white, width: 1.5),
                        columnWidths: const <int, TableColumnWidth>{
                          0: FixedColumnWidth(60),
                          1: FixedColumnWidth(70),
                          2: FixedColumnWidth(70),
                          3: FixedColumnWidth(70),
                          4: FixedColumnWidth(70),
                          // 5: FixedColumnWidth(100),
                        },
                        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                        children: <TableRow>[
                          TableRow(
                            children: <Widget>[
                              Container(
                                height: 50,
                                color: Colors.black,
                                child: Center(child: Text("Date",style: TextStyle(color: Colors.white),)),
                              ),
                              TableCell(
                                verticalAlignment: TableCellVerticalAlignment.top,
                                child: Container(
                                  height: 50,
                                  color: Colors.black,
                                  child: Center(child: Text("CIN No",style: TextStyle(color: Colors.white),)),
                                ),
                              ),
                              Container(
                                height: 50,
                                color: Colors.black,
                                child: Center(child: Text("Name",style: TextStyle(color: Colors.white),)),
                              ),
                              Container(
                                height: 50,
                                color: Colors.black,
                                child: Center(child: Text("Contact",style: TextStyle(color: Colors.white),)),
                              ),
                              Container(
                                height: 50,
                                color: Colors.black,
                                child: Center(child: Text("Amount",style: TextStyle(color: Colors.white),)),

                              ),

                            ],
                          ),
                          TableRow(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                            ),
                            children: <Widget>[
                              Container(
                                height: 50,
                                color: Colors.black,
                              ),
                              Container(
                                height: 50,
                                color: Colors.black,
                              ),
                              Center(
                                child: Container(
                                  height: 50,
                                  color: Colors.black,
                                ),
                              ),
                              Container(
                                height: 50,
                                color: Colors.black,
                              ),
                              Container(
                                height: 50,
                                color: Colors.black,
                              ),

                            ],
                          ),
                        ],
                      ),

                      SizedBox(
                        height: Get.height * 0.62,
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