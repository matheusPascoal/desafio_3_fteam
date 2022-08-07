import 'package:flutter/material.dart';
import 'package:playround/shared/core/theme/colors_login_page.dart';

import '../core/theme/border_login.dart';

class GenericTextField extends StatefulWidget {
  final String? hintText;
  final String? labelText;
  final TextEditingController? controller;
  final String? Function(String?)? validation;
  final bool obscureText;
  final IconData? icon;
  final Widget? suffuxIcon;
  const GenericTextField(
      {Key? key,
      this.hintText,
      this.controller,
      this.validation,
      this.obscureText = false,
      this.labelText,
      this.icon,
      this.suffuxIcon})
      : super(key: key);

  @override
  State<GenericTextField> createState() => _GenericTextFieldState();
}

class _GenericTextFieldState extends State<GenericTextField> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.labelText!),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          width: size.width * 0.9,
          height: size.height * 0.11,
          child: TextFormField(
              validator: widget.validation,
              controller: widget.controller,
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.never,
                prefixIcon: Icon(
                  widget.icon,
                  color: AppColor.primary,
                ),
                border: BorderLogin().myinputborder(),
                enabledBorder: BorderLogin().myinputborder(),
                suffixIcon: widget.suffuxIcon,
              )),
        ),
      ],
    );
  }
}
