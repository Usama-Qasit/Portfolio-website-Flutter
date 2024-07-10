
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color:secondaryColor,
        child:  Column(
          children: [
            Spacer(flex: 2,),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/usama1.jpeg"),
            ),
            Spacer(),

            Text("Usama Qasit",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const Text("Develop by usama",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: bodyTextColor,
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}