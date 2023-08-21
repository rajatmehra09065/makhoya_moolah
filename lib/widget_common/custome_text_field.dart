import 'package:flutter/cupertino.dart';
import 'package:makhoya_moolah/consts/consts.dart';

Widget customTextField({hint}){
  return ClipRRect(
    borderRadius: BorderRadius.circular(30),
    child: TextFormField(
      textAlign: TextAlign.left,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),

        hintText: hint,
        hintStyle: TextStyle(
            color: fontGrey,
            fontSize: 18),
        isDense: true,
        fillColor: CupertinoColors.systemGrey6,
        filled: true,
        border: InputBorder.none,
      ),
    ),
  );
}