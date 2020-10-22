import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:praktikum6/detail.dart';
import 'package:praktikum6/routing.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void changePages(StatelessWidget pages){
    Navigator.push(context,
        MaterialPageRoute(
            builder: (_) {
              return pages;
            }
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
//      body: ListView.builder(
//          itemCount: 5,
//          itemBuilder: (context, int i){
//            return GestureDetector(
//                onTap: (){
//                  Routing.changePageAnimation(context, DetailPage(titlenya: "Ini Adalah Page ${(i+1)}",));
//                },
//                child: Text("AAAA ${(i+1)}")
//            );
//          }
//      ),
      body: Container(
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/1.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.5), BlendMode.overlay),
          )
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_forward_ios),
          onPressed: (){
            //changePages(DetailPage());
            //Routing.changePages(context, DetailPage());
            //Navigator.push(context, PageTransition(duration: Duration(milliseconds: 300),type: PageTransitionType.fade, child: DetailPage()));
            Routing.changePageAnimation(context, DetailPage(titlenya: "Detail Page Baru",));
          }
      ),
    );
  }
}
