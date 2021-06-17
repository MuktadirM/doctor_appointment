import 'package:flutter/material.dart';

class CategoriesScroll extends StatelessWidget {
  final Color baseColor;
  final Color shadowColor;
  final IconData iconData;
  final String cardTitle;
  final Color iconColor;

  const CategoriesScroll({
    Key? key,
    required this.iconColor,
    required this.baseColor,
    required this.shadowColor,
    required this.iconData,
    required this.cardTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        color: baseColor,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            blurRadius: 15.0,
            offset: Offset(5, 8),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              iconData,
              color: iconColor,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              cardTitle,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w300,
                shadows: [
                  Shadow(
                      color: Colors.black.withOpacity(0.3),
                      offset: Offset(3, 3),
                      blurRadius: 5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
