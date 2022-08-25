import 'package:flutter/material.dart';

import '../core/theme/app_color.dart';

class DisplayWidget extends StatelessWidget {
  final String name;
  const DisplayWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(alignment: Alignment.topLeft, child: Text('Display Name')),
        Container(
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColor.primary),
          ),
          margin: const EdgeInsets.symmetric(vertical: 20.0),
          child: Center(
            child: Text(
              name,
              style: TextStyle(
                color: Theme.of(context).cardColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
