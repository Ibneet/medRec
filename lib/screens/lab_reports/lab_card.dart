import 'package:flutter/material.dart';

class LabCard extends StatelessWidget {
  final String name;
  final String imageUrl;

  final bool active;

  LabCard(this.name, this.imageUrl, this.active);

  @override
  Widget build(BuildContext context) {
    final double blur = active ? 80 : 0;
    final double offset = active ? 20 : 0;
    final double top = active ? 100 : 200;
    final double bottom = active ? 60 : 100;

    // final imageUrl = dummyUsers.singleWhere((user) {
    //   if (user.uid == withWhom) {
    //     return true;
    //   }
    //   return false;
    // });
    // final imageUrl =
    //     'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500';

    return AnimatedContainer(
      duration: Duration(
        milliseconds: 300,
      ),
      curve: Curves.easeInOutQuint,
      margin: EdgeInsets.only(
        top: top,
        bottom: bottom,
        right: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(
            // imageUrl,
            imageUrl,
          ),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black87,
            blurRadius: blur,
            offset: Offset(offset, offset),
          ),
        ],
      ),
      child: active
          ? Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              margin: EdgeInsets.only(
                top: top + 250,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Center(
                    child: Text(
                      '$name',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  // Row(
                  //   mainAxisSize: MainAxisSize.max,
                  //   children: <Widget>[
                  //     Expanded(
                  //       flex: 5,
                  //       child: Column(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: <Widget>[
                  //           Text(
                  //             '$to',
                  //             style: TextStyle(
                  //               color: Colors.white,
                  //               fontSize: 18,
                  //               fontWeight: FontWeight.w400,
                  //             ),
                  //           ),
                  //           Divider(
                  //             color: Colors.white,
                  //             height: 5,
                  //           ),
                  //           Text(
                  //             '$from',
                  //             style: TextStyle(
                  //               color: Colors.white,
                  //               fontSize: 18,
                  //               fontWeight: FontWeight.w500,
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //     Spacer(),
                  //     Expanded(
                  //       flex: 1,
                  //       child: Icon(
                  //         Icons.import_export,
                  //         color: Colors.white,
                  //         size: 30,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            )
          : SizedBox(),
    );
  }
}
