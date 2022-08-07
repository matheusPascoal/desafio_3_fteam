import 'package:flutter/material.dart';
import 'package:playround/shared/core/theme/border_login.dart';
import 'package:playround/shared/core/theme/colors_login_page.dart';

import '../core/validations/validate.dart';

class PasswordField extends StatefulWidget {
  final String? labelText;
  final TextEditingController? controller;

  final IconData? icon;

  const PasswordField({
    super.key,
    this.controller,
    this.labelText,
    this.icon,
  });

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isObscure = false;
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
              obscureText: _isObscure,
              controller: widget.controller,
              validator: (value) => ValidatesService.password(value!),
              decoration: InputDecoration(
                labelText: widget.labelText,
                prefixIcon: Icon(
                  Icons.lock_outline_rounded,
                  color: AppColor.primary,
                ),
                border: BorderLogin().myinputborder(),
                enabledBorder: BorderLogin().myinputborder(),
                suffixIcon: IconButton(
                  icon: Icon(_isObscure
                      ? Icons.visibility
                      : Icons.visibility_off_rounded),
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                ),
              ),
            )),
      ],
    );
  }
}
