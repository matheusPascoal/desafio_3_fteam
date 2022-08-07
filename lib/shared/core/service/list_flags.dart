import 'package:flutter/cupertino.dart';
import 'package:playround/shared/core/service/image_strings.dart';

class FlagsProfile {
  static List<Widget> flags() {
    return [
      Container(
          child: Row(
        children: [
          Image.network(StringFlags.Argentina),
          SizedBox(
            width: 30,
          ),
          Text('Argentina'),
        ],
      )),
      Container(
          child: Row(
        children: [
          Image.network(StringFlags.brasil),
          SizedBox(
            width: 30,
          ),
          Text('Brasil'),
        ],
      )),
      Container(
          child: Row(
        children: [
          Image.network(StringFlags.Ratanaba),
          SizedBox(
            width: 30,
          ),
          Text('Ratanabá'),
        ],
      )),
      Container(
          child: Row(
        children: [
          Image.network(StringFlags.Australia),
          SizedBox(
            width: 30,
          ),
          Text('Australia'),
        ],
      )),
    ];
  }
}
