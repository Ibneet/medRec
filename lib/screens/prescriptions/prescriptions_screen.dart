import 'package:flutter/material.dart';

import '../utils.dart';

var docs = [
  {
    'name': 'Dummy',
    'url':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQYSTMzk9FPh5GhZioytH56hpdwkJ3bS2rKU0FptKI8MXvETuVN&usqp=CAU',
  },
  {
    'name': 'Dummy',
    'url':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQYSTMzk9FPh5GhZioytH56hpdwkJ3bS2rKU0FptKI8MXvETuVN&usqp=CAU',
  },
  {
    'name': 'Dummy',
    'url':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQYSTMzk9FPh5GhZioytH56hpdwkJ3bS2rKU0FptKI8MXvETuVN&usqp=CAU',
  },
  {
    'name': 'Dummy',
    'url':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQYSTMzk9FPh5GhZioytH56hpdwkJ3bS2rKU0FptKI8MXvETuVN&usqp=CAU',
  },
  {
    'name': 'Dummy',
    'url':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQYSTMzk9FPh5GhZioytH56hpdwkJ3bS2rKU0FptKI8MXvETuVN&usqp=CAU',
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
            _buildTopStack(appHeight, context),
            Container(
              height: 40,
              child: Center(
                child: Text('DISEASES TO BE CURED'),
              ),
            ),
            Container(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: docs.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: index.isEven
                        ? EdgeInsets.fromLTRB(10, 10, 5, 10)
                        : EdgeInsets.fromLTRB(10, 10, 5, 10),
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
      height: appHeight*0.13,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: purpleGradient,
      ),
    );
  }

  _buildTitle(double appHeight) {
    return Positioned(
      left: 20.0,
      top: 50,
      child: Row(
        children: <Widget>[
          Text(
            'Prescriptions',
            style: TextStyle(
              fontSize: 32,
              color: Colors.white,
              fontFamily: 'Lobster'
            ),
          ),
        ],
      ),
    );
  }
}
