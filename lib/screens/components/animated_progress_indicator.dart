
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator({
    super.key, required this.percentage, required this.label,
  });
  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0,end: percentage),
            duration: defaultDuration,
            builder: (context,double value,child)=>
                Stack(
                  fit: StackFit.expand,
                  children:  [
                    const CircularProgressIndicator(
                      value: 0.8,
                      color: primaryColor,
                      backgroundColor: darkColor,
                    ),
                    Center(child: Text((value *100).toInt().toString() + "%",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    ),
                  ],
                ),
          ),
        ),
        Text(label,
          style: Theme.of(context).textTheme.titleSmall,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,

        ),
      ],
    );
  }
}