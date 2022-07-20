import 'package:flutter/material.dart';

import 'colors_login_page.dart';

class BorderLogin {
  
  OutlineInputBorder myinputborder() {
    //return type is OutlineInputBorder
    return OutlineInputBorder(
        //Outline border type for TextFeild
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(
          color: AppColor.primary,
          width: 1,
        ));
  }
}