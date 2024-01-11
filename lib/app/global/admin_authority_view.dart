import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:satta_admin/app/allGame/view/all_game_view.dart';
import 'package:satta_admin/app/auth/controller/login_controller.dart';
import 'package:satta_admin/app/auth/view/forgot_password_view.dart';
import 'package:satta_admin/app/global/colors.dart';

class admin_authority_view extends StatefulWidget {
  const admin_authority_view({super.key});

  @override
  State<admin_authority_view> createState() => _login_viewState();
}

class _login_viewState extends State<admin_authority_view> {
  login_controller controller = Get.put(login_controller());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/background 1.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios,color:Color(0xffDC9727),)),
        ),
        body: Container(
          width: Get.width,
          height: Get.height,
          decoration: BoxDecoration(color: Colors.transparent),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Container(
                  height: Get.height * 0.18,
                  child: Image(
                    image: AssetImage(
                      'assets/images/logo 1.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                customContainer('Blocked', Icons.block, () {}),
                customContainer('Data Delete', Icons.delete, () {}),
                customContainer(
                    'Total Active Account', Icons.account_circle, () {}),
                customContainer('Total Account', Icons.summarize, () {}),
                customContainer('Account Payment Status', Icons.payment, () {}),
                customContainer('Pending payment', Icons.paypal, () {}),
                customContainer(
                    'Notification Update', Icons.notifications, () {}),
              ],
            ).paddingSymmetric(
              horizontal: 20,
            ),
          ),
        ),
      ),
    );
  }

  Widget customContainer(
      String CityName, IconData iconData, Callback callback) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: Get.width,
        padding: EdgeInsets.symmetric(
          vertical: 10,
        ),
        margin: EdgeInsets.all(
          5,
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
            Text(
              '*${CityName.tr}',
              style: TextStyle(
                color: appcolor().ambercolor,
                fontSize: 15,
              ),
            ),
            Icon(
              iconData,
              color: appcolor().ambercolor,
            )
          ],
        ).paddingSymmetric(
          horizontal: 15,
        ),
      ),
    );
  }
}
