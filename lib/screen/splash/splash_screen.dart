import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final int _numPage = 3;
  final int _currentPage = 0;
  final _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Wrap(
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: const <Widget>[
                    Text(
                      'Skip',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Icon(
                      Icons.navigate_next_outlined,
                      color: Colors.grey,
                    )
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white, elevation: 0),
              ),
              Container()
            ],
          ),
        ),
      ),
    );
  }
}
