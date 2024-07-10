

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_webiste/constants.dart';
import 'package:portfolio_webiste/models/project.dart';
import 'package:portfolio_webiste/models/recommendation.dart';
import 'package:portfolio_webiste/screens/main/main_screen.dart';

import '../components/HighLight_Info.dart';
import '../components/Home_Banner.dart';
import '../components/My_Projects.dart';
import '../components/Project_card.dart';
import '../components/animated_counter.dart';
import '../components/high_lights.dart';
import '../components/recommendations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(
        children: [
      HomeBanner(),
          HighLightInfo(),

          MyProjects(),
          Recommendations(),


              ],
    );
  }
}


















