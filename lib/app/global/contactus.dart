import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:satta_admin/app/global/History/win_History.dart';
import '../../../Widget/contact_us.dart';
import 'colors.dart';
import 'package:url_launcher/url_launcher.dart';

class Contactus extends StatefulWidget {
  const Contactus({super.key});

  @override
  State<Contactus> createState() => _ContactusState();
}

class _ContactusState extends State<Contactus> {


  String email="info@digitalutilization.com";
  _launchEmail() async {
    if (await canLaunch("mailto:$email")) {
      await launch("mailto:$email");
    } else {
      throw 'Could not launch';
    }
  }

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
                'Contact Us'.tr,
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
                SliverList.list(children: [
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(
                            width: 1, color: Color(0xffDC9727))),
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () => launch("tel:// 1800-120-1740"),
                            child: Icon(
                              Icons.call,
                              color: appcolor().ambercolor,
                              size: 30,
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              _launchEmail();
                            },
                            child: Icon(
                              Icons.email_outlined,
                              color: appcolor().ambercolor,
                              size: 30,
                            ),
                          ),
                          InkWell(
                            onTap: () async => await launch(
                                "https://wa.me/?text=Hello"
                                // "https://wa.me/${9161470607}?text=Hello"
                            ),
                            child: Image.asset(
                              "assets/images/whatsappIcon.png",
                              height: 45,
                              width: 45,
                              color: appcolor().ambercolor,
                            ),
                          )
                        ],
                      ),
                    )

                    // ListTile(
                    //   title: Text('Contact No:- 9823475332',style: TextStyle(color: Colors.white),),
                    //   subtitle: Text('Email: abc@gmail.com',style: TextStyle(color: Colors.white),)
                    // )
                    ,
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
