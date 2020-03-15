import 'package:flutter/material.dart';

import 'page2.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Appbar(),
              Heading(),
              BigButtonBar(),
              FormFields(),
              SearchButton(),
              PopularPlaces()
            ],
          ),
        ),
      ),
    );
  }
}

class Appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30,20,30,10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Icon(Icons.menu)
        ],
      ),
    );
  }
}

class PopularPlaces extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30,top: 20,right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Popular places",style: TextStyle(color: Color(0xff1f284c),fontSize: 23,fontWeight:FontWeight.w600,)),
          SizedBox(height: 20,),
          Row(
            children: <Widget>[
              Image.asset('assets/ship.png',height: 70,),
              SizedBox(width: 10,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text("Amsterdam",style: TextStyle(color: Color(0xff1f284c),fontSize: 19,fontWeight:FontWeight.w600,)),
                    SizedBox(height: 5,),
                    Text("12,203 properties",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight:FontWeight.w600,))
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(14),
                child: Icon(Icons.arrow_forward),
                decoration: BoxDecoration(
                  color: Color(0xfffbf7f0),
                  borderRadius: BorderRadius.circular(17)
                ),
              )
            ],
          ),
          SizedBox(height: 30,),
        ],
      ),
    );
  }
}

class SearchButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0,0 ),
      alignment: Alignment.center,
      child: RaisedButton(
        elevation: 0,
        padding: EdgeInsets.symmetric(horizontal: 132,vertical: 17),
        child: Text("Search",style: TextStyle(fontSize: 16,color:  Colors.white),),
        color: Color(0xff008ff4),
        onPressed: (){
          Navigator.of(context).pushNamed(Page2.routeName);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17),),
      ),
    );
  }
}

class FormFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(height: 10,),
        CInputField(iconData: Icons.location_on,hintText: "Where",),
        CInputField(iconData: Icons.calendar_today,hintText: "Chech-in - Check-out",),
        CInputField(iconData: Icons.person,hintText: "1 Adult, 0 Children, 1 Room",),
      ],      
    );
  }
}

class CInputField extends StatelessWidget {
  final IconData iconData;
  final hintText;
  CInputField({this.iconData,this.hintText});
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 100,
      //width: 300,
      margin: EdgeInsets.fromLTRB(30,10,30,5),
      padding: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 1,color: Color(0xffeef0f3)))
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: Color(0xffa5cef3),
              borderRadius: BorderRadius.circular(15)
            ),
            child: Icon(iconData,color: Color(0xff008ff4),size: 21,),
          ),
          SizedBox(width: 20,),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
              ),
            )
          )
        ],
      ),
    );
  }
}

class BigButtonBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25,left: 30,right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          RaisedButton(
            elevation: 0,
            padding: EdgeInsets.symmetric(horizontal: 50,vertical: 17),
            child: Text("Hotels",style: TextStyle(fontSize: 16,color:  Color(0xff1f284c)),),
            color: Color(0xffffc253),
            onPressed: (){},
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17),side: BorderSide(color:  Color(0xffffc253),width: 1)),
          ),
          RaisedButton(
            elevation: 0,
            padding: EdgeInsets.symmetric(horizontal: 50,vertical: 17),
            child: Text("Flights",style: TextStyle(fontSize: 16,color: Color(0xff1f284c)),),
            color: Colors.white,
            onPressed: (){},
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17),side: BorderSide(color:  Color(0xff1f284c),width: 1)),
          ),
        ],
      ),
    );
  }
}

class Heading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: RichText(
        text: TextSpan(
          style: TextStyle(color: Color(0xff1f284c),fontSize: 27,fontWeight:FontWeight.w600,),
          children: [
            TextSpan(text: "Book unique homes\n",),
            TextSpan(text: "and experiences"),
          ]
        ),
      ),
    );
  }
}