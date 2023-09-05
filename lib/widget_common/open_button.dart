

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:makhoya_moolah/consts/consts.dart';
import 'package:makhoya_moolah/views/redeemed/redeemed.dart';

import '../views/open_card/open_cards.dart';

Widget openButton(){
  return ElevatedButton(
      style: ElevatedButton.styleFrom(

          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: Colors.white,
          padding: EdgeInsets.all(12)
      ),
      onPressed: (){
        Get.to(
           RedeemedScreen(), //next page class
            duration: Duration(milliseconds: 1100 ), //duration of transitions, default 1 sec
        transition: Transition.fadeIn); //transition effect

      }, child: open.text.fontFamily(semibold).black.make());
}