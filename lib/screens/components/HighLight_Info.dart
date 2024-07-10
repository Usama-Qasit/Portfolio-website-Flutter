
import 'package:flutter/cupertino.dart';
import 'package:portfolio_webiste/reponsive.dart';

import '../../constants.dart';
import 'animated_counter.dart';
import 'high_lights.dart';

class HighLightInfo extends StatelessWidget {
  const HighLightInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child:Responsive.isMobileLarge(context)
          ?const Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HighLight(
                  counter: AnimatedCounter(
                    value: 100,
                    text: "K+",),
                  label: "Subscribers",
                ),

                HighLight(
                  label: "Followers",
                  counter: AnimatedCounter(
                    value: 100,
                    text: "K+",
                  ),
                ),
              ],
            ),
        SizedBox(height: defaultPadding,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          HighLight(
            label: "Followers",
            counter: AnimatedCounter(
              value: 100,
              text: "K+",
            ),
          ),
          HighLight(
            label: "Followers",
            counter: AnimatedCounter(
              value: 100,
              text: "K+",
            ),
          ),
        ],),
      ],
      )
          : const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HighLight(
            counter: AnimatedCounter(
              value: 100,
              text: "K+",),
            label: "Subscribers",
          ),

          HighLight(
            label: "Followers",
            counter: AnimatedCounter(
              value: 100,
              text: "K+",
            ),
          ),
          HighLight(
            label: "Followers",
            counter: AnimatedCounter(
              value: 100,
              text: "K+",
            ),
          ),
          HighLight(
            label: "Followers",
            counter: AnimatedCounter(
              value: 100,
              text: "K+",
            ),
          ),


        ],
      ),
    );
  }
}




class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HighLight(
                counter: AnimatedCounter(
                  value: 119,
                  text: "K+",
                ),
                label: "Subscribers",
              ),
              HighLight(
                counter: AnimatedCounter(
                  value: 40,
                  text: "+",
                ),
                label: "Videos",
              ),
            ],
          ),
          const SizedBox(height: defaultPadding),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HighLight(
                counter: AnimatedCounter(
                  value: 30,
                  text: "+",
                ),
                label: "GitHub Projects",
              ),
              HighLight(
                counter: AnimatedCounter(
                  value: 13,
                  text: "K+",
                ),
                label: "Stars",
              ),
            ],
          ),
        ],
      )
          : Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HighLight(
            counter: AnimatedCounter(
              value: 119,
              text: "K+",
            ),
            label: "Subscribers",
          ),
          HighLight(
            counter: AnimatedCounter(
              value: 40,
              text: "+",
            ),
            label: "Videos",
          ),
          HighLight(
            counter: AnimatedCounter(
              value: 30,
              text: "+",
            ),
            label: "GitHub Projects",
          ),
          HighLight(
            counter: AnimatedCounter(
              value: 13,
              text: "K+",
            ),
            label: "Stars",
          ),
        ],
      ),
    );
  }
}