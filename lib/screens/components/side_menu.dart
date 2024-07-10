


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_webiste/screens/components/knowledge.dart';
import 'package:portfolio_webiste/screens/components/skills.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';
import 'animated_progress_indicator.dart';
import 'area_info.dart';
import 'coding.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
   const SideMenu({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(child: SingleChildScrollView(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AreaInfo(title:"Residence" ,text:"Pakistan",),
                  AreaInfo(title:"City" ,text:"Islamabad",),
                  AreaInfo(title:"Age" ,text:"23",),
                  Skills(),
                  SizedBox(height: defaultPadding,),
                  Coding(),
                  Knowledge(),
                  Divider(),
                  SizedBox(height: defaultPadding/2,),
                  TextButton(
                      onPressed: (){},
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text("DOWNLOAD CV ",
                            style: Theme.of(context).textTheme.titleSmall,
                            ),
                            SizedBox(width: defaultPadding/2,),
                            SvgPicture.asset("assets/icons/download.svg"),
                          ],
                        ),
                      ),
                  ),
        
                  Container(
                    margin: EdgeInsets.only(top:defaultPadding),
                    color: Color(0xFF24242E),
                    child: Row(
                      children: [
                        Spacer(),
                        IconButton(
        
                            onPressed:() {
                              const link = "https://www.linkedin.com/in/usama-qasit-26a857276/";
                              launchUrl(Uri.parse(link),
                              );
                            },
                            icon: SvgPicture.asset("assets/icons/linkedin.svg",),
                        ),
        
                        IconButton(
                          onPressed: () {
                            const link = "https://github.com/Usama-Qasit";
                            launchUrl(Uri.parse(link),
                            );
                          },
                          icon: SvgPicture.asset("assets/icons/github.svg"),
                        ),
        
                        IconButton(
                          onPressed: (){},
                          icon: SvgPicture.asset("assets/icons/twitter.svg"),
                        ),
                        Spacer(),
        
                      ],
                    ),
                  )
        
                ],
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}





class KnowledgeText extends StatelessWidget {
  const KnowledgeText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: defaultPadding/2),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          SizedBox(width: defaultPadding/2,),
          Text(text),
        ],
      ),
    );
  }
}






