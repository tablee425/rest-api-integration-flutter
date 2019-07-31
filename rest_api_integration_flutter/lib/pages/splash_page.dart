import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rest_api_integration_flutter/utils/app_shared_preferences.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final globalKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    new Future.delayed(const Duration(seconds: 3), _handleTapEvent);
    return new Scaffold(
      key: globalKey,
      body: _splashContainer(),
    );
  }

  Widget _splashContainer() {
    return GestureDetector(
      onTap: _handleTapEvent,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: new BoxDecoration(color: Colors.blue[400]),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            new Container(
              child: new Image(
                width: 200,
                height: 200,
                image: new AssetImage('assets/images/ic_launcher.png'),
                fit: BoxFit.fill,
              ),
            ),
            new Container(
              margin: EdgeInsets.only(top: 20.0),
              child: new Text('Flutter Client PHP Backend', style: TextStyle(color: Colors.white, fontSize: 24.0)),
            ),
          ],
        ),
      ),
    );
  }

  void _handleTapEvent() async {
    bool isLoggedIn = await AppSharedPreferences.isUserLoggedIn();
    if (this.mounted) {
      setState(() {
        if (isLoggedIn != null && isLoggedIn) {
          // home page
        } else {
          // login page
        }
      });
    }
  }
}