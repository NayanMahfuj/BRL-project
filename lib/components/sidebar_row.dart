// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/model/sidebaritem.dart';

class SidebarRow extends StatelessWidget {
  final SidebarItem item;
  const SidebarRow({required this.item});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 12,
        ),
        Container(
            width: 42.0,
            height: 42.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                gradient: item.background),
            child: item.icon),
        const SizedBox(
          width: 12,
        ),
        Text(
          item.title.toString(),
          style: kCalloutLabelStyle,
        )
      ],
    );
  }
}
