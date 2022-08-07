import 'package:flutter/material.dart';
import 'package:playround/shared/core/service/list_flags.dart';
import '../core/theme/colors_login_page.dart';

class DropFlags extends StatefulWidget {
  const DropFlags({super.key});

  @override
  State<DropFlags> createState() => _DropFlagsState();
}

class _DropFlagsState extends State<DropFlags> {
  final List<Widget> widgetListFlags = FlagsProfile.flags();
  late Widget dropdownValue;
  @override
  void initState() {
    super.initState();
    dropdownValue = widgetListFlags.first;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Align(alignment: Alignment.topLeft, child: Text('Country')),
        ),
        Container(
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(color: AppColor.primary),
            borderRadius: BorderRadius.circular(10),
          ),
          child: DropdownButton<Widget>(
            icon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.keyboard_arrow_down_outlined),
            ),
            isExpanded: true,
            value: dropdownValue,
            style: TextStyle(color: AppColor.black),
            onChanged: (Widget? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items:
                widgetListFlags.map<DropdownMenuItem<Widget>>((Widget value) {
              return DropdownMenuItem<Widget>(
                value: value,
                child: value,
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
