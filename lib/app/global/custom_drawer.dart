import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:satta_admin/app/global/admin_authority_view.dart';
import 'package:satta_admin/app/global/colors.dart';
import 'package:satta_admin/app/global/notification.dart';
import 'package:satta_admin/app/global/playvideo.dart';
import 'package:satta_admin/app/global/share_Page.dart';

import '../auth/view/login_view.dart';
import 'History/History.dart';
import 'Wallet/WalletPage.dart';
import 'complaintScreen.dart';
import 'contactus.dart';
import 'feedBackScreen.dart';

class custom_drawer extends StatelessWidget {
  custom_drawer({super.key});
  final padding = EdgeInsets.symmetric(horizontal: 15);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: Get.width * 0.75,
      shadowColor: Colors.grey,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border(
            left: BorderSide(
              color: appcolor().ambercolor,
            ),
            top: BorderSide(
              color: appcolor().ambercolor,
            ),
          ),
          // borderRadius: BorderRadius.circular(8),
        ),

        // padding: padding,
        child: ListView(
          children: [


            //comment by balawant
            // Container(
            //   height: Get.height * 0.13,
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.end,
            //     children: [
            //       CircleAvatar(
            //         radius: 25,
            //         child: Container(
            //           decoration: BoxDecoration(
            //             shape: BoxShape.circle,
            //             border: Border(
            //                 // left: BorderSide(color: appcolor().ambercolor,),
            //                 // top: BorderSide(color: appcolor().ambercolor,),
            //                 ),
            //           ),
            //         ),
            //       ),
            //       Column(
            //         mainAxisAlignment: MainAxisAlignment.end,
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(
            //             'Name'.tr,
            //             style: TextStyle(
            //               color: appcolor().ambercolor,
            //               fontSize: 16,
            //             ),
            //           ),
            //           Text(
            //             '+91 9087849852',
            //             style: TextStyle(
            //                 color: appcolor().ambercolor, fontSize: 16),
            //           ),
            //         ],
            //       ).paddingOnly(
            //         left: 10,
            //       ),
            //     ],
            //   ),
            // ),




            SizedBox(
              height: 20,
            ),
            drawerItemWidget(
              text: 'Admin Authority'.tr,
              iconData: Icons.person,
              callback: () {
                Get.back();
                Get.to(admin_authority_view());
              },
            ),
            drawerItemWidget(
              text: 'Home'.tr,
              iconData: Icons.home,
              callback: () {
                Get.back();
                // Get.offAll(all_game_view());
              },
            ),
            //comment by balawant

            // drawerItemWidget(
            //   text: 'Block User'.tr,
            //   iconData: FontAwesomeIcons.addressBook,
            //   callback: () {
            //     Get.back();
            //     // Get.to(profile_view());
            //   },
            // ),


            // drawerItemWidget(
            //   text: 'Wallet'.tr,
            //   iconData: Icons.wallet,
            //   callback: () {
            //     Get.to(withdraw_funds_view());
            //     // Get.to(withdraw_funds_view());
            //   },
            // ),

            drawerItemWidget(
              text: 'History'.tr,
              iconData: Icons.history,
              callback: () {
                Get.to(History_view());
                // Get.to(History_view());
              },
            ),
            drawerItemWidget(
              text: 'How to play'.tr,
              iconData: Icons.video_camera_back,
              callback: () {
                Get.to(videoPlayer());
              },
            ),
            drawerItemWidget(
              text: 'Share'.tr,
              iconData: Icons.share,
              callback: () {
                Get.to(shareus());
              },
            ),
            drawerItemWidget(
              text: 'Contact Us'.tr,
              iconData: FontAwesomeIcons.phone,
              callback: () {
                Get.to(Contactus());
              },
            ),
            drawerItemWidget(
              text: 'Notifications'.tr,
              iconData: Icons.notifications,
              callback: () {
                Get.to(Notifications());
              },
            ),


            drawerItemWidget(
              text: 'Feedback'.tr,
              iconData: Icons.feedback_outlined,
              callback: () {
                Get.to(FeedBackScreen());
              },
            ),


            drawerItemWidget(
              text: 'Complaint'.tr,
              iconData: Icons.comment_bank_outlined,
              callback: () {
                Get.to(ComplaintScreen());
              },
            ),



            drawerItemWidget(
              text: 'Logout'.tr,
              iconData: Icons.logout,
              callback: () {
                Get.offAll(login_view());
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget drawerItemWidget({
  required String text,
  required IconData iconData,
  required Callback callback,
  final hovercolor = Colors.white70,
}) {
  return InkWell(
    onTap: callback,
    child: Container(
      // margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
              height: Get.height * 0.025,
              child: Icon(
                iconData,
                color: appcolor().ambercolor,
                size: 25,
              )),
          SizedBox(
            width: Get.width * 0.05,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ],
      ),
    ),
  );
}
