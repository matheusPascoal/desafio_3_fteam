import 'package:flutter/material.dart';

import '../core/theme/app_color.dart';

class GenericTextField extends StatefulWidget {
  final String? hintText;
  final String? labelText;
  final TextEditingController? controller;
  final String? Function(String?)? validation;
  final bool obscureText;
  final IconData? icon;
  final Widget? suffuxIcon;
  const GenericTextField({
    Key? key,
    this.hintText,
    this.controller,
    this.validation,
    this.obscureText = false,
    this.labelText,
    this.icon,
    this.suffuxIcon,
  }) : super(key: key);

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
          height: size.height * 0.03,
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
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColor.primary),
                borderRadius: BorderRadius.circular(15),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(width: 3, color: Colors.red),
                borderRadius: BorderRadius.circular(15),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  strokeAlign: StrokeAlign.center,
                  width: 2,
                  color: AppColor.primary,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 3, color: AppColor.primary),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        )
      ],
    );
  }
}

// OutlineInputBorder myinputborder() {
//   return const OutlineInputBorder(
//     borderRadius: BorderRadius.all(Radius.circular(12)),
//     borderSide: BorderSide(
//       color: AppColor.primary,
//     ),
//   );
// }
