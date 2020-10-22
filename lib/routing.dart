import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Routing{

  static changePages(BuildContext context,StatelessWidget pages){
    Navigator.push(context,
        MaterialPageRoute(
            builder: (_) {
              return pages;
            }
        )
    );
  }

  static changePageAnimation(BuildContext context, StatelessWidget pages){
    Navigator.push(context, PageTransition(
        duration: Duration(milliseconds: 300),
        type: PageTransitionType.fade,
        child: pages
    ));
  }
}