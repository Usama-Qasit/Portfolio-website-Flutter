import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_webiste/screens/components/side_menu.dart';

import '../../constants.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Knowledge",
            style: Theme.of(context).textTheme.titleSmall,

          ),
        ),

        const KnowledgeText(text: "Flutter , Dart"),

        const KnowledgeText(text: "Python , Postman"),

        const KnowledgeText(text: "Git knowledge"),
      ],
    );
  }
}