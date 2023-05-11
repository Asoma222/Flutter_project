import 'package:flutter/material.dart';
import 'LoadPage.dart';

class Home_ extends StatefulWidget {
  const Home_({super.key});

  @override
  State<Home_> createState() => _Home_State();
}

class _Home_State extends State<Home_> {
  bool _isIndicatorActive = true;
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        _isIndicatorActive = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/دواء.jpeg", width: 200),
              _isIndicatorActive
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : Text("hi osama")
            ]),
      ),
    );
  }
}
