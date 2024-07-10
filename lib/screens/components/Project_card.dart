



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_webiste/reponsive.dart';

import '../../constants.dart';
import '../../models/project.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key, required this.project,
  });
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding) ,
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Spacer(),

          Text(
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            project.description!,
            style: const TextStyle(height: 1.5,
                color: bodyTextColor,
                fontSize: 12
            ),
          ),

          Spacer(),

          TextButton(onPressed: (){},
            child: const Text("Read More >>",
              style: TextStyle(color: primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}