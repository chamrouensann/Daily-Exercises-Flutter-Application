import 'package:dailyexercisesflutterapp/constants.dart';
import 'package:dailyexercisesflutterapp/screens/details_screen.dart';
import 'package:dailyexercisesflutterapp/widgets/bottom_nav_bar.dart';
import 'package:dailyexercisesflutterapp/widgets/category_card.dart';
import 'package:dailyexercisesflutterapp/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Cairo',
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),
                  Text(
                    "Good Morning \nChamrouen",
                    style: Theme.of(context).textTheme.display1.copyWith(
                          fontWeight: FontWeight.w900,
                        ),
                  ),
                  SearchBar(),
                  Expanded(
                    child: GridView.count(
                      childAspectRatio: .99,
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          svgSrc: "assets/icons/Hamburger.svg",
                          title: "Diet\n Recommendation",
                          press: () {},
                        ),
                        CategoryCard(
                          svgSrc: "assets/icons/Excrecises.svg",
                          title: "Kegel Exercises",
                          press: () {},
                        ),
                        CategoryCard(
                          svgSrc: "assets/icons/Meditation.svg",
                          title: "Meditation",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DetailsScreen();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          svgSrc: "assets/icons/yoga.svg",
                          title: "Yoga",
                          press: () {},
                        ),
                      ],
                    ),
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
