import 'package:doctor_appointment/presentation/constants.dart';
import 'package:doctor_appointment/presentation/home/widgets/blogCard.dart';
import 'package:doctor_appointment/presentation/utils/categoriesCardList.dart';
import 'package:doctor_appointment/presentation/widgets/categorie_scroll.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(10),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Search',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 22,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Doctor Right Now',
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Colors.blue[300],
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.shade100,
                    blurRadius: 15.0,
                    offset: Offset(5, 8),
                  ),
                ],
              ),
              height: 60.0,
              width: 370,
              child: const TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14.0),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  hintText: 'Search here',
                  hintStyle: kHintTextStyle,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          // Categories Start
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Categories',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(width: 20),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 14),
                ),
                onPressed: () {
                  HapticFeedback.vibrate();
                  print('View All clicked');
                },
                child: const Text('view all'),
              ),
            ],
          ),
          Container(
            height: 130,
            child: ListView.builder(
              padding: EdgeInsets.only(
                bottom: 30,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: categoriesLsit.length,
              itemBuilder: (BuildContext context, int i) {
                return Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: CategoriesScroll(
                    baseColor: categoriesLsit[i].baseColor,
                    shadowColor: categoriesLsit[i].shadowColor,
                    iconData: categoriesLsit[i].iconData,
                    iconColor: categoriesLsit[i].iconColor,
                    cardTitle: categoriesLsit[i].cardTitle,
                  ),
                );
              },
            ),
          ),
          // Categories End
          // Blog Start
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Latest Blog',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(width: 20),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 14),
                ),
                onPressed: () {
                  HapticFeedback.vibrate();
                  print('View All clicked');
                },
                child: const Text('view all'),
              ),
            ],
          ),
          BlogCard(),
        ],
      ),
    );
  }
}
