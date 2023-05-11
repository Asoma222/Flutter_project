import 'package:flutter/material.dart';
import 'package:project/details.dart';
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
              SizedBox(
                height: 50,
              ),
              _isIndicatorActive
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : GestureDetector(
                      child: Container(
                          color: Colors.green,
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 20),
                              child: Text("home page"))),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Details_Screen()),
                        );
                      },
                    )
            ]),
      ),
    );
  }
}
