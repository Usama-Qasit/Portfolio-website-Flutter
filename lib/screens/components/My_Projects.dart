
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_webiste/reponsive.dart';

import '../../constants.dart';
import '../../models/project.dart';
import 'Project_card.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("My Projects",
          style:Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: Colors.white),
        ),
        const SizedBox(height: defaultPadding,),
       const Responsive(
         mobile:  ProjectGridView(crossAxisCount: 1,childAspectRatio: 1.7,),
         mobileLarge: ProjectGridView(crossAxisCount: 2,),
         tablet:  ProjectGridView(childAspectRatio: 1.1,),
         desktop:  ProjectGridView(),
       ),
      ],
    );
  }
}

class ProjectGridView extends StatelessWidget {
  const ProjectGridView({
    super.key,  this.crossAxisCount=3,  this.childAspectRatio=1.3,
  });

  final int  crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demo_projects.length,
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context,index)=>ProjectCard(project: demo_projects[index],),
    );
  }
}