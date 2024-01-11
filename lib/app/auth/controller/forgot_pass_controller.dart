import 'package:flutter/material.dart';
import 'package:get/get.dart';

class forgot_password_controller extends GetxController{

  RxBool showcircle = false.obs;
  TextEditingController phone_controller = TextEditingController();
  TextEditingController new_pass_controller = TextEditingController();
  TextEditingController confirm_pass_controller = TextEditingController();
}