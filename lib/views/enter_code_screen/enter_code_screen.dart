
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:makhoya_moolah/consts/consts.dart';
import 'package:makhoya_moolah/widget_common/ourButton.dart';
import 'package:flutter/services.dart';



import '../open_card/open_cards.dart';

class EnterCode extends StatefulWidget {
  const EnterCode({super.key});

  @override
  State<EnterCode> createState() => _EnterCodeState();
}

class _EnterCodeState extends State<EnterCode> {
  bool isCodevalid = true;
  
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Override the system back button behavior to exit the app
        SystemNavigator.pop();
        return false; // Return false to indicate that you've handled the pop action
      },
      child: Scaffold(
        resizeToAvoidBottomInset : false,
        backgroundColor: Colors.white,

        body: Center(
          child: Expanded(
            child: Column(
              children: [
                (context.screenHeight * 0.11).heightBox,
                Image.asset(appLogo, width: 100,),

                25.heightBox,
                appName.text.fontFamily(bold).size(25).make(),

                90.heightBox,
                //Enter code
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(16),
                      hintText: enterCodeHint,
                      hintStyle: TextStyle(
                        color: fontGrey,
                          fontSize: 18),
                      isDense: true,
                      fillColor: CupertinoColors.systemGrey6,
                      filled: true,
                      border: InputBorder.none,
                    ),
                  ),
                ),

                35.heightBox,
                //Redeem button
                ourButton(title:redeem ,onPressed:(){
                  Get.to(
                      OpenCardsScreen(), //next page class
                      duration: Duration(milliseconds: 1100), //duration of transitions, default 1 sec
                      transition: Transition.fadeIn //transition effect
                  );

                }).box.width(context.screenWidth).height(55).make()
              ],
            ).box.padding(EdgeInsets.all(25)).rounded.make(),
          ),
        ),

      ),
    );
  }

  
}
