import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class bid_history_controller extends GetxController {
  RxString startdate = ''.obs;
  RxString enddate = ''.obs;
  DateTime? pickedDate;
  Future<void> showdatepickerstart(BuildContext context) async {
    pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),

      //this line are use for remove edit icon from calender
      initialEntryMode: DatePickerEntryMode.calendarOnly,
    );

    if (pickedDate != null) {
      print(pickedDate);
      startdate.value = DateFormat('dd-MMM-yyyy').format(pickedDate!);
      print(startdate.value);

      if (pickedDate!.isAfter(DateFormat('dd-MMM-yyyy').parse(enddate.value))) {

        print('Start date must be after the end date');

        startdate.value = '';
      }

    }
  }
  Future<void> showdatepickerend(BuildContext context) async {
    pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
      //this line are use for remove edit icon from calender
      initialEntryMode: DatePickerEntryMode.calendarOnly,
    );

    if (pickedDate != null) {
      print(pickedDate);
      enddate.value = DateFormat('dd-MMM-yyyy').format(pickedDate!);
      print(enddate.value);

      if (pickedDate!.isBefore(DateFormat('dd-MMM-yyyy').parse(startdate.value))) {

        print('End date must be after the start date');

        enddate.value = '';
      }

    }
  }
}





