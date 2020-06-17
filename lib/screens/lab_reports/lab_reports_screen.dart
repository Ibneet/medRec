import 'package:flutter/material.dart';

import '../utils.dart';

class LabReportsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appHeight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _buildTopStack(appHeight, context),
          ],
        )
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
            'Lab Reports',
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