import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:makhoya_moolah/consts/consts.dart';
import 'package:makhoya_moolah/consts/images.dart';
import 'package:flutter/material.dart';
import 'package:makhoya_moolah/views/form_fill_up/form_fill_up.dart';
import 'package:makhoya_moolah/widget_common/ourButton.dart';

import '../../consts/lists.dart';

class RedeemedScreen extends StatelessWidget {
  const RedeemedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              10.heightBox,
              Align(
                alignment: Alignment.center,
                child: Text(
                  redeem,
                  style: TextStyle(fontFamily: bold, fontSize: 20, color: Colors.black),
                )
              ),
              Image.asset(led, width: 250, height: 200),
              winSamsungLed.text.fontFamily(bold).size(20).make(),
              10.heightBox,
              Container(
                padding: EdgeInsets.all(20),
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 8,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            winningItemsImgList[index],
                            width: 100,
                            height: 100,
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                              padding: EdgeInsets.all(4),
                              color: Colors.transparent,
                              child: Text(
                                (index + 1).toString().padLeft(2, '0'),
                                style: TextStyle(
                                  color: fontGrey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              5.heightBox,
              ourButton(title: redeem , onPressed: (){
                Get.to(
                    FormFillUP(), //next page class
                    duration: Duration(milliseconds: 1100 ), //duration of transitions, default 1 sec
                    transition: Transition.fadeIn);

              }).box.width(context.screenWidth -40).height(55).make(),
              20.heightBox
            ],
          ),
        ),
      ),
    );
  }
}

