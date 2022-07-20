import 'package:flutter/material.dart';

class GenericButton extends StatelessWidget {
  final String text;
  const GenericButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeMediaQuery = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {},
      child: Container(
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
        )),
        width: 300,
        height: 50,
        decoration: BoxDecoration(
            color: Color(0XFF918AE2), borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
