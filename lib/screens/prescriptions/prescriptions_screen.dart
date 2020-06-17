import 'package:flutter/material.dart';

import '../utils.dart';

var docs = [
  {
    'name': 'Dummy',
    'url':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSmD1TcAB64G_9bEmyvtBgXdfiGqd9lfo4Kh_HfLjsDqXCfqVlp&usqp=CAU',
  },
  {
    'name': 'Dummy',
    'url':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSmD1TcAB64G_9bEmyvtBgXdfiGqd9lfo4Kh_HfLjsDqXCfqVlp&usqp=CAU',
  },
  {
    'name': 'Dummy',
    'url':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSmD1TcAB64G_9bEmyvtBgXdfiGqd9lfo4Kh_HfLjsDqXCfqVlp&usqp=CAU',
  },
  {
    'name': 'Dummy',
    'url':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSmD1TcAB64G_9bEmyvtBgXdfiGqd9lfo4Kh_HfLjsDqXCfqVlp&usqp=CAU',
  },
  {
    'name': 'Dummy',
    'url':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSmD1TcAB64G_9bEmyvtBgXdfiGqd9lfo4Kh_HfLjsDqXCfqVlp&usqp=CAU',
  },
];

class PrescriptionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appHeight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: AlignmentDirectional.topCenter,
              children: <Widget>[
                _buildTopStack(appHeight, context),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: appHeight * 0.1,
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: appHeight * 0.08,
                      width: MediaQuery.of(context).size.width - 40,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(28)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 5.5,
                                blurRadius: 5.5)
                          ]),
                      child: Center(
                        child: Text(
                          'Your Recent Prescriptions',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'GentiumBookBasic',
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: docs.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    // : EdgeInsets.fromLTRB(10, 10, 5, 10),
                    child: Column(
                      children: <Widget>[
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey[400],
                                  blurRadius: 30,
                                  offset: Offset(1, 10),
                                ),
                              ],
                            ),
                            child: Image.network(
                              docs[index]['url'],
                              height: 125,
                              width: 125,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(docs[index]['name'].toUpperCase()),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Stack _buildTopStack(double appHeight, BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      overflow: Overflow.visible,
      children: <Widget>[
        _buildBackgroundCover(appHeight),
        _buildTitle(appHeight),
      ],
    );
  }

  _buildBackgroundCover(double appHeight) {
    return Container(
      height: appHeight * 0.13,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: purpleGradient,
      ),
    );
  }

  _buildTitle(double appHeight) {
    return Positioned(
      left: 20.0,
      top: 30,
      child: Row(
        children: <Widget>[
          Text(
            'Prescriptions',
            style: TextStyle(
                fontSize: 32, color: Colors.white, fontFamily: 'Lobster'),
          ),
        ],
      ),
    );
  }
}
