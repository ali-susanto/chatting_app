import 'package:chatting_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final int _numPage = 3;
  late int _currentPage = 0;
  final _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              const SizedBox(height: 15),
              AnimatedContainer(
                duration: const Duration(seconds: 5),
                height: 400,
                child: PageView(
                  physics: const ClampingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(),
                          Center(
                            child: SvgPicture.asset(
                              'assets/images/fast.svg',
                              height: 250,
                              width: 300,
                            ),
                          ),
                          const Spacer(),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Fast',
                            style: kTitle,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'With this app can fast to send message to your friend',
                            style: kSubtitle,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
