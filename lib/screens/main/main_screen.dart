

import 'package:flutter/material.dart';
import 'package:portfolio_webiste/constants.dart';

import '../../reponsive.dart';
import '../components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.children});

  final List<Widget>children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: Responsive.isDesktop(context)
          ? null
           :AppBar(
        leading: Builder(builder: (context)=>IconButton(onPressed: (){
          Scaffold.of(context).openDrawer();
        }, icon: Icon(Icons.menu),),)
      ),

      drawer: const SideMenu(),
      body: Center(
        child: Container(
          constraints:  BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if(Responsive.isDesktop(context))
              Expanded(
                flex: 2,
                  child: SideMenu(),
              ),
              SizedBox(width: defaultPadding,),
              Expanded(
                flex: 7,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ...children,
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

