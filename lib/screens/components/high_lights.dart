import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class HighLight extends StatelessWidget {
  const HighLight({
    super.key, required this.label, required this.counter,
  });

  final Widget counter;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        counter,
        const SizedBox(width: defaultPadding/2,),
        Text(label,style: Theme.of(context).textTheme.titleSmall,),
      ],
    );
  }
}