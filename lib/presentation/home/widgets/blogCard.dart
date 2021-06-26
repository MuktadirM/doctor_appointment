import 'package:doctor_appointment/presentation/utils/blogCardList.dart';
import 'package:flutter/material.dart';

class BlogCard extends StatelessWidget {
  const BlogCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 8.0,
      mainAxisSpacing: 2.0,
      shrinkWrap: true,
      childAspectRatio: 1.3,
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: List.generate(
        blogLsit.length,
        (i) {
          return Container(
            height: 135,
            width: 180,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    blogLsit[i].imageUrl,
                    fit: BoxFit.cover,
                    height: 144,
                    width: 200,
                  ),
                ),
                Container(
                  height: 144,
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
                  bottom: 8.0,
                  left: 10.0,
                  right: 10.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        blogLsit[i].blogTitle,
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
                        blogLsit[i].docName,
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
                        blogLsit[i].docTitle,
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
          );
        },
      ),
    );
  }
}
