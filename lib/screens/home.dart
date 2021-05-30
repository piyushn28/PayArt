import 'package:flutter/material.dart';
import 'package:payart/utils/universal_variables.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UniversalVariables.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.sort,
            color: Colors.black,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
            icon: Stack(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        color: UniversalVariables.notiColor,
                        shape: BoxShape.circle),
                  ),
                ),
                Icon(
                  Icons.notifications_none,
                  color: Colors.black,
                  size: 30,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
