import 'package:flutter/material.dart';

class FrontCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(
              // imageUrl,
              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSmD1TcAB64G_9bEmyvtBgXdfiGqd9lfo4Kh_HfLjsDqXCfqVlp&usqp=CAU',
            ),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black87,
              blurRadius: 30,
              // offset: Offset(offset, offset),
            ),
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          margin: EdgeInsets.only(
            top: 250,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Center(
                child: Text(
                  'De stiksn',
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
        ));
  }
}
