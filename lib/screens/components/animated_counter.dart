import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({
    super.key, required this.value, this.text,
  });
  final int value;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(tween: IntTween(begin: 0,end: value),
      duration: defaultDuration,
      builder: (context,value,child)=>Text(
        "$value$text",
        style:Theme.of(context).textTheme.titleMedium!.copyWith(
          color: primaryColor,
        ),
      ),
    );
  }
}