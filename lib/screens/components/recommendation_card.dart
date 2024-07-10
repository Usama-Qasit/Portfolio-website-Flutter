import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/recommendation.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    super.key, required this.recommendation,
  });
  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      color: secondaryColor,
      padding: const EdgeInsets.all(defaultPadding),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(recommendation.name!,
            style: Theme.of(context).textTheme.titleSmall,),
          Text(recommendation.source!,
              style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height:defaultPadding,),
          Text(
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            recommendation.text!,
            style: const TextStyle(height: 1.5,color:bodyTextColor ),
          ),
        ],
      ),
    );
  }
}