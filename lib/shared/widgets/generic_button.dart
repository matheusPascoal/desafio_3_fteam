import 'package:flutter/material.dart';

class GenericButton extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  const GenericButton({Key? key, required this.text, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).backgroundColor,
              fontSize: size.width * 0.05,
            ),
          ),
        ),
        height: size.width * 0.12,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
