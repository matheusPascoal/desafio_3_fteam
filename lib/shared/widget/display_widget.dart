import 'package:flutter/material.dart';

import '../core/theme/colors_login_page.dart';

class DisplayWidget extends StatefulWidget {
  final String name;
  const DisplayWidget({super.key, required this.name});

  @override
  State<DisplayWidget> createState() => _DisplayWidgetState();
}

class _DisplayWidgetState extends State<DisplayWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(alignment: Alignment.topLeft, child: Text('Display Name')),
        Container(
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColor.primary)),
          margin: EdgeInsets.symmetric(vertical: 20.0),
          child: Center(
            child: Text(
              widget.name,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
