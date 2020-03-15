import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  static const routeName = '/page-2';
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: TopImage()
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Details(),
                Bottombar()
              ],
            )
          )
        ],
      )
    );
  }
}

class TopImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height/2+30,
          width: MediaQuery.of(context).size.width,
          child: Image.asset('assets/sydney2.jpg',fit: BoxFit.cover,),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30,20,30,0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                child: Icon(Icons.arrow_back_ios,),
                onTap: (){
                  Navigator.of(context).maybePop();
                },
              ),
              Icon(Icons.menu,)
            ],
          ),
        )
      ],
    );
  }
}

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Sydney, Australia",style: TextStyle(color: Color(0xff1f284c),fontSize: 27,fontWeight:FontWeight.w600,),),
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                height: 120,
                width: 80,
                decoration: BoxDecoration(
                  color: Color(0xfffbf7f0),
                  borderRadius: BorderRadius.circular(17)
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.asset('assets/opera-house.png',width: 45,),
                    SizedBox(height: 10,),
                    Container(
                      alignment: Alignment.center,
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Color(0xffffac00),width: 2),
                        borderRadius: BorderRadius.circular(22.5),
                      ),
                      child: Text("4.7"),
                    )
                  ],
                ),
              ),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("The Sydney Opera\nHouse Tour",style: TextStyle(color: Color(0xff1f284c),fontSize: 19,fontWeight:FontWeight.w600,),),
                  SizedBox(height: 10,),
                  Text("Duration 1 hour",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight:FontWeight.w600,),)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class Bottombar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        color: Color(0xff1b3984),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text("2,305",style: TextStyle(color: Colors.white,fontSize: 30),),
                SizedBox(height: 5,),
                Text("Properties Found",style: TextStyle(color: Colors.white,fontSize: 15)),
              ],
            ),
            RaisedButton(
              padding: EdgeInsets.symmetric(horizontal: 35,vertical: 17),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
              color: Color(0xffd9f0ff),
              child: Text("See All",style: TextStyle(color: Color(0xff008bf4)),),
              onPressed: (){},
            )
          ],
        ),
      ),
    );
  }
}