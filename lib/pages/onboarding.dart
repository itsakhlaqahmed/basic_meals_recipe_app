import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:meals_app/data/updated_data.dart';
import 'package:meals_app/pages/tabs.dart';
import 'package:meals_app/widgets/page_indicator_dot.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int activePageIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: (currentIndex) {
          setState(() {
            activePageIndex = currentIndex;
          });
        },
        itemCount: OnBoardingScreenData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Expanded(
                child: Container(
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(OnBoardingScreenData[index].imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(.2)),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                          colors: [
                            Colors.black54,
                            Color.fromARGB(0, 0, 0, 0),
                            Color.fromARGB(0, 0, 0, 0),
                            Color.fromARGB(112, 0, 0, 0)
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        )),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                OnBoardingScreenData[index].title,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  overflow: TextOverflow.ellipsis,
                                  shadows: const [
                                    Shadow(
                                      color: Colors.black38,
                                      offset: Offset(1, 1),
                                      blurRadius: 2.0,
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                OnBoardingScreenData[index].description,
                                softWrap: true,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        color: Colors.white,
                                        shadows: const [
                                      Shadow(
                                        color: Colors.black38,
                                        offset: Offset(1, 1),
                                        blurRadius: 2.0,
                                      )
                                    ]),
                                textAlign: TextAlign.center,
                              ),
                              // const SizedBox(
                              //   height: 40,
                              // ),
                              
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 20.0,
                        left: 0,
                        right: 0,
                        child: Column(
                          children: [
                            Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: List.generate(
                                    OnBoardingScreenData.length,
                                    (index) => IndicatorDot(
                                      isActive: activePageIndex == index,
                                    ),
                                  ),
                                ),
                              ),
                            const SizedBox(height: 20,),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                horizontal: 40,
                              ),
                              width: double.infinity,
                              height: 60,
                              // color: Colors.black87,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 241, 226, 81),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                            
                              child: TextButton(
                                onPressed: () {
                                  if (activePageIndex ==
                                      OnBoardingScreenData.length - 1) {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const TabsScreen(),
                                      ),
                                    );
                                  }
                            
                                  _pageController.nextPage(
                                    duration: const Duration(milliseconds: 100),
                                    curve: Curves.bounceIn,
                                  );
                                },
                                child: Text(
                                  activePageIndex == OnBoardingScreenData.length - 1
                                      ? 'Continue...'
                                      : 'Next',
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
