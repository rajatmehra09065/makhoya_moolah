import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:makhoya_moolah/consts/consts.dart';
import 'package:makhoya_moolah/consts/lists.dart';
import 'package:makhoya_moolah/views/redeemed/redeemed.dart';
import 'package:makhoya_moolah/widget_common/open_button.dart';
import 'package:makhoya_moolah/widget_common/ourButton.dart';

class OpenCardsScreen extends StatelessWidget {
  const OpenCardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),

            // Text
            Align(
              alignment: Alignment.center,
              child: Text(
                "You Can Open One Card",
                style: TextStyle(
                  fontFamily: semibold,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            10.heightBox,

            // Cards
            Expanded(
              child: SingleChildScrollView(
                child: Container(
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
                      return Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(openCardsIconsList[index]),
                          Positioned(
                            top: 47,
                            left: 60,
                            child: Container(
                              padding: EdgeInsets.all(4),
                              color: Colors.transparent,
                              child: Text(
                                (index + 1).toString().padLeft(2, '0'),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 8,
                            right: 8,
                            child: openButton().box.width(130).height(35).make()
                          ),
                        ],
                      ).box.roundedSM.clip(Clip.antiAlias).make();
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
