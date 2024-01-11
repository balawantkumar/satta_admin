import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'colors.dart';

class FeedBackScreen extends StatefulWidget {
  const FeedBackScreen({Key? key}) : super(key: key);

  @override
  State<FeedBackScreen> createState() => _FeedBackScreenState();
}

class _FeedBackScreenState extends State<FeedBackScreen> {
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
                'FeedBack'.tr,
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
                    itemCount: feedBackList.length,
                    shrinkWrap: true,
                    itemBuilder: (_,i){
                      return  Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Container(
                          width: Get.width * 1,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                              border:
                              Border.all(color: appcolor().ambercolor, width: 2)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text.rich(TextSpan(
                                        text: 'Name: ',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                        children: <InlineSpan>[
                                          TextSpan(
                                            text: feedBackList[i].name,
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white),
                                          )
                                        ])),
                                    Text(
                                      "2 June 2023",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text.rich(TextSpan(
                                        text: 'CIN No: ',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                        children: <InlineSpan>[
                                          TextSpan(
                                            text:  feedBackList[i].CIN,
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white),
                                          )
                                        ])),
                                    Text(
                                      "03:34 PM",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Thanks for your support. As someone who knows us well, let others know how we help. We’d love you to review product or service on Yelp ",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white.withOpacity(0.8)),
                                )
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



class FeedBackClass{
  String name;
  String CIN;
  FeedBackClass({ required this.name, required this.CIN});

}

List<FeedBackClass>feedBackList=[
  FeedBackClass( name: "Aditya",CIN: "64475"),
  FeedBackClass(name: "Arun",CIN: "86302"),
  FeedBackClass(name: "Kumar",CIN: "93467"),
  FeedBackClass(name: "Rohit",CIN: "47386")
];
