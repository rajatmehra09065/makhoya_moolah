import 'package:makhoya_moolah/consts/consts.dart';

Widget ourButton({String? title,onPressed}){
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: pinkishOrange,
        padding: EdgeInsets.all(12)
      ),
      onPressed: onPressed,
      child:title!.text.white.fontFamily(bold).size(16).make() );
}