import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import '../main.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 12),
      height: 70,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItems(
            Svgsrc: "assets/icons/calendar.svg",
            title: "Today",
          ),
          BottomNavItems(
            Svgsrc: "assets/icons/gym.svg",
            title: "All Exercises",
            isActive: true,
          ),
          BottomNavItems(
            Svgsrc: "assets/icons/Settings.svg",
            title: "Setting",
          ),
        ],
      ),
    );
  }
}

class BottomNavItems extends StatelessWidget {
  final String Svgsrc;
  final String title;
  final Function press;
  final bool isActive;
  const BottomNavItems({
    Key key,
    this.Svgsrc,
    this.title,
    this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SvgPicture.asset(
            Svgsrc,
            color: isActive ? kActiveIconColor : kTextColor,
          ),
          Text(
            title,
            style: TextStyle(
              color: isActive ? kActiveIconColor : kTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
