import 'package:dailyexercisesflutterapp/constants.dart';
import 'package:dailyexercisesflutterapp/widgets/search_bar.dart';
import 'package:dailyexercisesflutterapp/widgets/session_card.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .50,
            decoration: BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage("assets/images/meditation_bg.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Text(
                    "Meditation",
                    style: Theme.of(context)
                        .textTheme
                        .display1
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "3-10 MIN course",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: size.width * .6,
                    child: Text(
                        "Live happy and learn to live with other people and enjoy your life and make your dream happen. You should meditation 10mins a day to get good health."),
                  ),
                  SizedBox(
                    child: SearchBar(),
                    width: size.width * .4,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: <Widget>[
                      SessionCard(
                        sessionNum: 1,
                        isDone: true,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNum: 2,
                        isDone: true,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNum: 3,
                        isDone: true,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNum: 4,
                        isDone: true,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNum: 5,
                        isDone: true,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNum: 6,
                        isDone: true,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNum: 7,
                        isDone: true,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNum: 8,
                        isDone: true,
                        press: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
