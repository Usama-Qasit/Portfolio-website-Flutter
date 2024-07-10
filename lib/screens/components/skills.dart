


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'animated_progress_indicator.dart';

class Skills extends StatelessWidget {
  const Skills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding:   EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Skills",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const Row(
          children: [
            Expanded(
              child:  AnimatedCircularProgressIndicator(
                percentage:0.8,
                label: "Flutter",
              ),
            ),

            SizedBox(width: defaultPadding,),

            Expanded(
              child:  AnimatedCircularProgressIndicator(
                percentage:0.72,
                label: "Firebase",
              ),
            ),


            SizedBox(width: defaultPadding,),

            Expanded(
              child:  AnimatedCircularProgressIndicator(
                percentage:0.65,
                label: "Node.js",
              ),
            ),


          ],
        ),
      ],
    );
  }
}