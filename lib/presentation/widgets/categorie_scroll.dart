import 'package:flutter/material.dart';

class CategoriesScroll extends StatelessWidget {
  final void Function(String) _function;
  final Color baseColor;
  final Color shadowColor;
  final IconData iconData;
  final String cardTitle;
  final Color iconColor;

  const CategoriesScroll(
      this._function,
      {
    Key? key,
    required this.iconColor,
    required this.baseColor,
    required this.shadowColor,
    required this.iconData,
    required this.cardTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _function(this.cardTitle),
      splashColor: Colors.black12,
      child: Container(
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
          padding: const EdgeInsets.only(left: 10.0),
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
                  fontWeight: FontWeight.w400,
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
      ),
    );
  }
}
