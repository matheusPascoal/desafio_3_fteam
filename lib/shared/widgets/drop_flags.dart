import 'package:flutter/material.dart';
import '../core/service/flagsAndCountry.dart';
import '../core/theme/app_color.dart';
import '../model/model_flags.dart';

class DropFlags extends StatefulWidget {
  const DropFlags({super.key});

  @override
  State<DropFlags> createState() => _DropFlagsState();
}

class _DropFlagsState extends State<DropFlags> {
  ModelFlags modelFlasg = ModelFlags();
  FlagsAndCountry flagsAndCountry = FlagsAndCountry();
  @override
  void initState() {
    super.initState();
  }

  ModelFlags? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Align(alignment: Alignment.topLeft, child: Text('Country')),
        ),
        Container(
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(color: AppColor.primary),
            borderRadius: BorderRadius.circular(10),
          ),
          child: DropdownButton<ModelFlags>(
            value: dropdownValue,
            icon: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.keyboard_arrow_down_outlined),
            ),
            isExpanded: true,
            style: const TextStyle(color: AppColor.black),
            onChanged: (value) {
              setState(() {
                dropdownValue = value;
                flagsAndCountry;
              });
            },
            items: flagsAndCountry.flagList
                .map<DropdownMenuItem<ModelFlags>>((item) {
              return DropdownMenuItem<ModelFlags>(
                child: Row(
                  children: [
                    Image.network(item.image),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(item.country),
                  ],
                ),
                value: item,
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
