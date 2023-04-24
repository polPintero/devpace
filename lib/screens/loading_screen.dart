import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import './home_screen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Future<void> setTimeout() async {
    await Future<void>.delayed(const Duration(seconds: 2));
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return HomeScreen();
    }));
  }

  @override
  void initState() {
    super.initState();
    setTimeout();
  }

  @override
  Widget build(BuildContext context) {
    Widget screen = Scaffold(
      body: Center(
        child: SpinKitFadingCircle(
          color: Colors.teal.shade400,
          size: 100.0,
        ),
      ),
    );
    return screen;
  }
}
