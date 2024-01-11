import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:satta_admin/app/global/History/win_History.dart';
import '../../../Widget/contact_us.dart';
import 'colors.dart';


class shareus extends StatelessWidget {
  const shareus({super.key});

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
                child: Icon( Icons.arrow_back_ios,
                    color: appcolor().ambercolor,)),
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
                SliverList.list(

                    children: [
                      SizedBox(
                        height: Get.height * 0.15,
                      ),
                      Card(
                        color: Colors.white,
                        child: Container(
                          height: Get.height * 0.4,
                          width: Get.width * 0.8,
                          color: Colors.white,
                          child: Column(
                            children: [
                              SizedBox(height: 20,),
                              Center(
                                child: SizedBox(
                                    height: 100,
                                    width: 100,
                                    child: Image.asset('assets/images/img.png')),),
                              SizedBox(height: 20,),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text('Share the love by inviting your friends and    both of you will get Rs 100',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),
                              ),
                              SizedBox(height: 20,),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('Share your code',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color:Colors.grey[200],
                                      border: Border.all(color: Colors.yellow)
                                    ),
                                    height: 40,
                                    width: 150,
                                    child: Center(child: Text('Vhodst',style: TextStyle(fontWeight: FontWeight.bold),)),
                                  ),
                                  SizedBox(width: 10,),
                                  Container(
                                    decoration: BoxDecoration(
                                        color:Colors.cyan,
                                        border: Border.all(color: Colors.yellow)
                                    ),
                                    height: 40,
                                    width: 80,
                                    child: Center(child: Icon(Icons.share,color: Colors.white,)

                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
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

