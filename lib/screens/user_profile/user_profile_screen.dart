import 'package:flutter/material.dart';
import '../../models/user.dart';
import '../../dummy_data.dart';
import './draggable_sheet.dart';

class UserProfileScreen extends StatelessWidget {
  final User currentUser = dummyUsers.singleWhere((user) {
    return user.uid == 'u1';
  });

  @override
  Widget build(BuildContext context) {
    final appHeight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: appHeight,
            child: Image.network(
              currentUser.imageUrl,
              fit: BoxFit.cover,
            ),
          ),

          DraggableSheet(
            currentUser, 
          )
        ],
      ),
    );
  }
}

