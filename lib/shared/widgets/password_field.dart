import 'package:flutter/material.dart';

import '../core/theme/app_color.dart';
import '../core/validations/validate.dart';

class PasswordField extends StatefulWidget {
  final String labelText;
  final TextEditingController controller;

  const PasswordField({
    super.key,
    required this.controller,
    required this.labelText,
  });

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.labelText),
        SizedBox(
          height: size.width * 0.05,
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
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).primaryColor),
                borderRadius: BorderRadius.circular(15),
              ),
              border: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 3, color: Theme.of(context).errorColor),
                borderRadius: BorderRadius.circular(15),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  strokeAlign: StrokeAlign.center,
                  width: 2,
                  color: Theme.of(context).primaryColor,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 3, color: Theme.of(context).primaryColor),
                borderRadius: BorderRadius.circular(15),
              ),
              prefixIcon: const Icon(
                Icons.lock_outline_rounded,
                color: AppColor.primary,
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  _isObscure ? Icons.visibility : Icons.visibility_off_rounded,
                ),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
