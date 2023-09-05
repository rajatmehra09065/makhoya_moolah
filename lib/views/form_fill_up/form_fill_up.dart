import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:makhoya_moolah/consts/consts.dart';
import 'package:makhoya_moolah/widget_common/custome_text_field.dart';
import 'package:makhoya_moolah/widget_common/ourButton.dart';

class FormFillUP extends StatelessWidget {
  const FormFillUP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            20.heightBox,
            Align(
              alignment: Alignment.center,
                child: redeemed.text.fontFamily(bold).black.size(20).make()),

            50.heightBox,
            
            //winning price img
            Image.asset(led , width: 130,height: 130,),

            10.heightBox,
            //winning price name
            winSamsungLed.text.fontFamily(bold).size(18).black.make(),

            30.heightBox,
            //form fill  up
            customTextField(hint: fullName),
            15.heightBox,

            customTextField(hint: mobileNumber),
            15.heightBox,

            customTextField(hint: address),
            15.heightBox,

            customTextField(hint: pinCode),
            15.heightBox,

            //submit button
            ourButton(title: submit , onPressed: (){
              Get.to(
                  FormFillUP(), //next page class
                  duration: Duration(milliseconds: 1100 ), //duration of transitions, default 1 sec
                  transition: Transition.fadeIn);

            }).box.width(context.screenWidth).height(55).make()



          ],
        ).box.padding(EdgeInsets.all(16)).make(),
      ),
    );
  }
}
