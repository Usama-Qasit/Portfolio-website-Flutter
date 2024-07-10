

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../constants.dart';
import 'animated_linear_indicator.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Coding ",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),

        const AnimatedLinearIndicator(percentage: 0.8,label: "Dart",),

        const AnimatedLinearIndicator(percentage: 0.75, label: "HTML"),

        const AnimatedLinearIndicator(percentage: 0.85, label: "CSS"),

        const AnimatedLinearIndicator(percentage: 0.75, label: "Javascript"),

        const AnimatedLinearIndicator(percentage: 0.70, label: "Python"),
      ],
    );
  }
}




















