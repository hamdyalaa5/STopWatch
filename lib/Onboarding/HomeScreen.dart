
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = "Home";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget dotpageview() {
    return Builder(builder: ((context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        for(int i = 0; i < 3; i++)
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            width:i == pagenumber? 25: 6,
            height: 6,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: i==pagenumber?Colors.black : Colors.black54),)
      ],
      );
    }));
  }

  PageController nextpage = PageController();

 int pagenumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F4F2),
      body: PageView(
        onPageChanged: (value){
          setState((){
          pagenumber= value;
          });
        },
        controller: nextpage,
        children: [
          Column(
            children: [
              SizedBox(height: 60,),
              Image.asset('assets/images/Time management-pana.png'),
              Container(
                 margin: EdgeInsets.symmetric(vertical: 35, horizontal: 35),
                 alignment: Alignment.center,
                    child: Text('You should mange your Time to get more and better work done in less time',
                    style:TextStyle(
                      color : Colors.black54 , fontSize: 20 , ),
                    ),
              ),
        InkWell(
        onTap: () { nextpage.animateToPage(1, duration: Duration(milliseconds: 500), curve: Curves.easeIn) ;},
         child: Container( // warp cin
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.redAccent,
            ),
            child: Text('Next',
              style: TextStyle(
                  color: Colors.white, fontSize: 20),
            ),
          ),
        ),
              SizedBox(height: 50,),
              dotpageview(),
            ],
    ),
          Column(
            children: [
              SizedBox(height: 60,),
              Image.asset('assets/images/Work time-pana.png'),
            Container(
              padding: EdgeInsets.symmetric(vertical: 60, horizontal: 50),
               alignment: Alignment.center,
               child: Text(
                   'Set a specific time for each task',
            style:TextStyle(
             color: Colors.black54, fontSize: 20,
            ),
            ),
            ),
              InkWell(
                onTap: () {nextpage.animateToPage(2, duration: Duration(milliseconds: 500), curve: Curves.easeIn) ;},
                child:  Container( // warp cin
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: Colors.redAccent,
                    ),
                    child: Text('Next',
                      style: TextStyle(
                          color: Colors.white, fontSize: 20),
                    ),
                  ),
              ),
              SizedBox(height: 50,),
              dotpageview(),
            ],
            ),
          Column(
            children: [
              SizedBox(height: 60,),
              Image.asset('assets/images/college entrance exam-pana.png'),
             Container(
             padding: EdgeInsets.symmetric(vertical:60, horizontal: 50),
                     alignment: Alignment.center,
                    child: Text(
                'Finish your task before deadline',
            style: TextStyle(
              color : Colors.black54,fontSize:20,
            ),
            ),
             ),
              InkWell(
                onTap: () {nextpage.animateToPage(1, duration: Duration(milliseconds: 500), curve: Curves.easeIn) ;},
                child:  Container( // warp cin
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: Colors.redAccent,
                    ),
                    child: Text('Get started',
                      style: TextStyle(
                          color: Colors.white, fontSize: 20),
                    ),
                  ),
              ),
              SizedBox(height: 50,),
              dotpageview(),
            ],
          ),
        ],
      ),
    );
  }
}
