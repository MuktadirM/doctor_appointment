import 'package:doctor_appointment/presentation/constants.dart';
import 'package:doctor_appointment/presentation/utils/categoriesCardList.dart';
import 'package:doctor_appointment/presentation/widgets/categorie_scroll.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                        color: Color(0xffbbdffb), // blue[100]
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
              Container(
                height: 135,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 15.0,
                      offset: Offset(5, 8),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Image.network(
                      'https://merriam-webster.com/assets/mw/images/article/art-wap-article-main/alt-5ae892611bf1a-5168-68b2575aab38f2c97ce8846381d07044@1x.jpg',
                      fit: BoxFit.cover,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 5.0,
                      left: 10.0,
                      right: 10.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Check your heart regularly',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Dr. Wang Shu',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Text(
                            'Cardiac Specialist',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Blog End
            ],
          ),
        ),
      ),
    );
  }
}
