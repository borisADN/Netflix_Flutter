import 'package:flutter/material.dart';
import 'package:netflix_app/pages/widgets/onboarding.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.transparent,
          leading: Image(image: AssetImage("assets/images/symbol.png")),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text("PRIVACY",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)),
            ),
            TextButton(
              onPressed: () {},
              child: Text("SIGN IN ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)),
            )
          ],
        ),
        body: Stack(alignment: Alignment.bottomCenter, children: [
          PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                Onboarding(
                  title: "Unlimited movies, TV shows and more",
                  subTitle: "Watch anywhere. Cancel anytime.",
                  image: "assets/images/netflix1.jpg",
                ),
                Onboarding(
                  title: "There is a plan for every fan",
                  subTitle: "plans starting at \$ 9/month",
                  image: "assets/images/netflix2.jpg",
                ),
                Onboarding(
                  title: "Cancel online anytime",
                  subTitle: "join today, no raison to wait",
                  image: "assets/images/netflix3.jpg",
                ),
              ]),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      3,
                      (index) => AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            margin: EdgeInsets.only(right: 5),
                            height: 10,
                            width: _currentPage == index ? 30 : 10,
                            decoration: BoxDecoration(
                              color: _currentPage == index
                                  ? Colors.red
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          )),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text('Get Started'),
                  ),
                )
              ],
            ),
          )
        ]));
  }
}
