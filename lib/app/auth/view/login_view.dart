import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:satta_admin/app/allGame/view/all_game_view.dart';
import 'package:satta_admin/app/auth/controller/login_controller.dart';
import 'package:satta_admin/app/auth/view/forgot_password_view.dart';
import 'package:satta_admin/app/global/colors.dart';
import 'package:satta_admin/language/language_controller.dart';

class login_view extends StatefulWidget {
  const login_view({super.key});

  @override
  State<login_view> createState() => _login_viewState();
}

class _login_viewState extends State<login_view> {
  login_controller controller = Get.put(login_controller());
   Applanguagecontroller language_controller = Get.put(Applanguagecontroller());

  bool passwordVisible = false;
  String _password = '';

  @override
  void initState() {
    // TODO: implement initState
    // services.requestNotificationPermission();
    // services.firebaseInit();
    // services.getDeviceToken().then((value) {
    //   print('device token: ' + value.toString());
    // } );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // controller.mobilecontroller.clear();
    // controller.password_controller.clear();
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
                  height: Get.height * 0.08,
                ),

                //comment by balawant

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [
                //     InkWell(
                //       onTap: () {
                //         Get.bottomSheet(custombottomsheet());
                //       },
                //       child: Container(
                //         margin: EdgeInsets.all(
                //           5,
                //         ),
                //         padding:
                //             EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(
                //             5,
                //           ),
                //           color: appcolor().ambercolor,
                //         ),
                //         child: Text(
                //           'Translate'.tr,
                //           style: TextStyle(
                //             fontSize: 18,
                //           ),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),

                SizedBox(
                  height: Get.height * 0.12,
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
                customfield('Mobile Number'.tr, TextInputType.phone, 10, Icons.call,
                    controller.mobilecontroller, false),
                // SizedBox(
                //   height: Get.height * 0.03,
                // ),
                // customfield('Password'.tr, TextInputType.visiblePassword, 20,
                //     Icons.lock, controller.password_controller, true),





                SizedBox(
                  height: Get.height * 0.03,
                ),

                Container(
                  padding: EdgeInsets.only(left: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: appcolor().ambercolor,
                    ),
                    color: Colors.black,
                  ),
                  width: Get.width * 0.8,
                  height: Get.height * 0.065,

                  child: TextFormField(
                    controller:  controller.password_controller,
                    autovalidateMode:
                    AutovalidateMode.onUserInteraction,
                    obscureText: passwordVisible,
                    maxLength: 25,
                    style: TextStyle(
                      color: appcolor().ambercolor,
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      counterText: "",
                      hintText: "Password",
                      errorMaxLines: 2,
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: appcolor().ambercolor,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: appcolor().ambercolor,
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: appcolor().ambercolor,
                        fontSize: 18,
                      ),
                      suffixIcon: InkWell(
                        onTap: (){

                          setState(() {
                            passwordVisible = !passwordVisible;
                          });

                        },
                        child: Icon(passwordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,color: appcolor().ambercolor,),
                      ),



                      alignLabelWithHint: false,
                      filled: false,
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                    cursorColor:   appcolor().ambercolor,

                    onSaved: (value) {
                      _password = value ?? '';
                    },
                  ),
                ),


                SizedBox(
                  height: Get.height * 0.03,
                ),


                // comment by balawant


                // Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [
                //     TextButton(
                //       onPressed: () {
                //         // Get.to(forgot_Password_view());
                //         print('hii');
                //         Get.to(forgot_Password_view());
                //       },
                //       style: TextButton.styleFrom(
                //           padding: EdgeInsets.zero,
                //           minimumSize: Size(50, 30),
                //           tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                //           alignment: Alignment.centerLeft),
                //       child: Text(
                //         'Forgot Password'.tr+'?',
                //         style: TextStyle(
                //           color: Colors.white,
                //           fontSize: 16,
                //         ),
                //       ),
                //     ),
                //   ],
                // ).paddingSymmetric(horizontal: 12),









                // Obx(
                //   () =>controller.show_Circle.value==false? InkWell(
                //     onTap: () {
                //       String mobile_no =
                //           controller.mobilecontroller.text.trim().toString();
                //       String password =
                //           controller.password_controller.text.trim().toString();

                //       // controller.FirebaseLogin(mobile_no, password);
                //       // Get.to(all_game_view());
                //     },
                //     child: Container(
                //       margin: EdgeInsets.all(
                //         5,
                //       ),
                //       padding:
                //           EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(
                //           5,
                //         ),
                //         color: appcolor().ambercolor,
                //       ),
                //       child: Text(
                //         'Login',
                //         style: TextStyle(
                //           fontSize: 18,
                //         ),
                //       ),
                //     ),
                //   ):CircularProgressIndicator(
                //     color: appcolor().ambercolor,
                //   ),
                // ),

                InkWell(
                  onTap: () {
                    String mobile_no =
                        controller.mobilecontroller.text.trim().toString();
                    String password =
                        controller.password_controller.text.trim().toString();

                    // controller.FirebaseLogin(mobile_no, password);
                    Get.to(all_game_view());
                  },
                  child: Container(
                    margin: EdgeInsets.all(
                      5,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        5,
                      ),
                      border: Border.all(
                        color: appcolor().ambercolor,
                      ),
                      color: Colors.black,
                    ),
                    child: Text(
                      'Login'.tr,
                      style: TextStyle(
                        fontSize: 18,
                        color: appcolor().ambercolor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
              ],
            ).paddingSymmetric(
              horizontal: 20,
            ),
          ),
        ),
      ),
    );
  }

  Widget customfield(String hintText, TextInputType? keyType, int maxElement,
      IconData icon, TextEditingController textcontroller, bool showelement) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: appcolor().ambercolor,
        ),
        color: Colors.black,
      ),
      width: Get.width * 0.8,
      height: Get.height * 0.065,
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              obscureText: showelement,
              controller: textcontroller,
              keyboardType: keyType,
              maxLength: maxElement,
              style: TextStyle(
                color: appcolor().ambercolor,
                fontSize: 18,
              ),
              textAlignVertical: TextAlignVertical.top,
              decoration: InputDecoration(
                counter: Offstage(),
                border: InputBorder.none,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                hintText: hintText,
                hintStyle: TextStyle(
                  color: appcolor().ambercolor,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Icon(
            icon,
            color: appcolor().ambercolor,
          ).paddingOnly(
            right: 10,
          )
        ],
      ),
    );
  }


 Widget custombottomsheet() {
    return Container(
      color: Colors.white,
      child: Wrap(
        children: [
          // english
          Row(
            children: [
              Text(
                'English',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              Obx(
                () => Radio(
                  value: 'English',
                  groupValue: language_controller.groupValue.value,
                  onChanged: (val) {
                    language_controller.groupValue.value = val.toString();
                    language_controller.changeLanguage('en', 'US');
                  },
                ),
              ),
            ],
          ).paddingSymmetric(
            horizontal: 20,
          ),
          // hindi
          Row(
            children: [
              Text(
                'हिंदी',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              Obx(
                () => Radio(
                  value: 'हिंदी',
                  groupValue: language_controller.groupValue.value,
                  onChanged: (val) {
                    language_controller.groupValue.value = val.toString();
                    language_controller.changeLanguage('hi', 'IN');
                  },
                ),
              )
            ],
          ).paddingSymmetric(
            horizontal: 20,
          ),
          // punjabi
          Row(
            children: [
              Text(
                'ਪੰਜਾਬੀ',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              Obx(
                () => Radio(
                  value: 'ਪੰਜਾਬੀ',
                  groupValue: language_controller.groupValue.value,
                  onChanged: (val) {
                    language_controller.groupValue.value = val.toString();
                    language_controller.changeLanguage('pu', 'PU');
                  },
                ),
              )
            ],
          ).paddingSymmetric(
            horizontal: 20,
          ),
          // bengali
          Row(
            children: [
              Text(
                'বাংলা',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              Obx(
                () => Radio(
                  value: 'বাংলা',
                  groupValue: language_controller.groupValue.value,
                  onChanged: (val) {
                    language_controller.groupValue.value = val.toString();
                    language_controller.changeLanguage('be', 'BE');
                  },
                ),
              )
            ],
          ).paddingSymmetric(
            horizontal: 20,
          ),
          // Gujrati
          Row(
            children: [
              Text(
                'গুজরাটি',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              Obx(
                () => Radio(
                  value: 'গুজরাটি',
                  groupValue: language_controller.groupValue.value,
                  onChanged: (val) {
                    language_controller.groupValue.value = val.toString();
                    language_controller.changeLanguage('gu', 'GU');
                  },
                ),
              )
            ],
          ).paddingSymmetric(
            horizontal: 20,
          ),
          // marathi
          Row(
            children: [
              Text(
                'मराठी',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              Obx(
                () => Radio(
                  value: 'मराठी',
                  groupValue: language_controller.groupValue.value,
                  onChanged: (val) {
                    language_controller.groupValue.value = val.toString();
                    language_controller.changeLanguage('ma', 'MA');
                  },
                ),
              )
            ],
          ).paddingSymmetric(
            horizontal: 20,
          ),
          // tamil
          // Row(
          //   children: [
          //     Text(
          //       'தமிழ்',
          //       style: TextStyle(
          //         fontSize: 18,
          //         fontWeight: FontWeight.w600,
          //       ),
          //     ),
          //     Spacer(),
          //     Obx(
          //       () => Radio(
          //         value: 'தமிழ்',
          //         groupValue: language_controller.groupValue.value,
          //         onChanged: (val) {
          //           language_controller.groupValue.value = val.toString();
          //           language_controller.changeLanguage('ta', 'TA');
          //         },
          //       ),
          //     )
          //   ],
          // ).paddingSymmetric(
          //   horizontal: 20,
          // ),
        ],
      ),
    );
  }
}

