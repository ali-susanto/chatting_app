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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
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
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            'Secure',
                            style: kTitle,
                          ),
                          const SizedBox(height: 15),
                          const Text(
                            'Secure your message with encrypted data',
                            style: kSubtitle,
                          ),
                          const Spacer(),
                          Center(
                            child: SvgPicture.asset(
                              'assets/images/secure.svg',
                              height: 250,
                              width: 300,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(),
                          Center(
                            child: SvgPicture.asset(
                              'assets/images/easy.svg',
                              height: 250,
                              width: 300,
                            ),
                          ),
                          const Spacer(),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Easy',
                            style: kTitle,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Easy to use with minimalize UI',
                            style: kSubtitle,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                        _numPage, (index) => buildDot(index, context))
                  ],
                ),
              ),
              const Spacer(),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      if (_currentPage == _numPage - 1) {
                        Navigator.pushReplacementNamed(context, '/login');
                      }
                      _pageController.nextPage(
                          duration: const Duration(microseconds: 500),
                          curve: Curves.easeIn);
                    },
                    style: ElevatedButton.styleFrom(primary: kPrimaryColor),
                    child: Text((_currentPage == 0) ? 'Get Started' : 'Next')),
              )
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDot(int index, BuildContext context) {
    return AnimatedContainer(
      duration: kThemeAnimationDuration,
      height: 10.0,
      width: _currentPage == index ? 10 : 10,
      margin: const EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: _currentPage == index ? kPrimaryColor : kSecondaryColor,
      ),
    );
  }
}
