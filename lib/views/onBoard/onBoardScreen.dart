import 'package:flutter/material.dart';
import 'package:travel_app/Model/OnBoardModel/onBoardModel.dart';
import 'package:travel_app/config/components/RoundButton/RoundButton.dart';
import 'package:travel_app/config/extenshion.dart';
import 'package:travel_app/config/routes/routesnames.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemCount: OnBoardModel.model.length,
        itemBuilder: (context, index) {
          var data = OnBoardModel.model[index];
          return Stack(
            children: [
              SizedBox(
                height: context.mh,
                width: context.mw,
                child: Image.asset(
                  data.image,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: context.mh,
                width: context.mw,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      data.title,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      data.description,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    RoundButton(
                      title: data.btntext,
                      onPress: () {
                        if (_currentPage < OnBoardModel.model.length - 1) {
                          _currentPage++;
                          _pageController.animateToPage(
                            _currentPage,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        } else {
                          Navigator.pushReplacementNamed(
                              context, RoutesNames.homeScreen);
                        }
                      },
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
