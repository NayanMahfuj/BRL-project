// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/model/sidebaritem.dart';

import 'components/sidebar_row.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SidebarScreen(),
      ),
    );
  }
}

class SidebarScreen extends StatelessWidget {
  const SidebarScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(32)),
          color: kSidebarBackgroundColor),
      padding: const EdgeInsets.symmetric(vertical: 35.0, horizontal: 20.0),
      child: SafeArea(
        child: Column(
          children: [
            // ListTile(
            //   leading: CircleAvatar(
            //     backgroundImage: AssetImage('asset/images/profile.jpg'),
            //     radius: 25,
            //   ),
            //   title: Text(
            //     "Yeasir Arefin Tusher",
            //     style: kCalloutLabelStyle,
            //   ),
            //   subtitle: Text(
            //     'Flutter Developer',
            //     style: kSearchPlaceholderStyle,
            //   ),
            // ),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('asset/images/profile.jpg'),
                  radius: 25,
                ),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Yeasir Arefin Tusher",
                      style: kCalloutLabelStyle,
                    ),
                    Text(
                      'Flutter Developer',
                      style: kSearchPlaceholderStyle,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            SidebarRow(item: sidebarItem[0]),
            const SizedBox(
              height: 32,
            ),
            SidebarRow(item: sidebarItem[1]),
            const SizedBox(
              height: 32,
            ),
            SidebarRow(item: sidebarItem[2]),
            const SizedBox(
              height: 32,
            ),
            SidebarRow(item: sidebarItem[3]),
            const Spacer(),
            Row(
              children: [
                Image.asset(
                  'asset/icons/icon-logout.png',
                  width: 17,
                ),
                const SizedBox(width: 12),
                Text(
                  'Log out',
                  style: kSecondaryCalloutLabelStyle,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
