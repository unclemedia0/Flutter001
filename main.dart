import 'package:flutter/material.dart';
import 'package:unclemediaapp001/pages/first.dart';
import 'package:unclemediaapp001/pages/second.dart';
import 'package:unclemediaapp001/pages/third.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int seleteindext = 0;
  final tabs = [FirstPage(),SecondPage(),ThirdPage()];

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
          appBar: AppBar(
            title: Text('ເເອບບັນທືກການຊື້ຂາຍ',style: TextStyle(fontSize: 20,fontFamily: 'Phetsarath OT'),),
            centerTitle: true,
          ),
          body: tabs[seleteindext],
          bottomNavigationBar:BottomNavigationBar(
            currentIndex: seleteindext,
            onTap: (index){
              print("Tab: $index");
              setState(() {
                seleteindext = index;
              });

            },

            items: [
              BottomNavigationBarItem(icon: Icon(Icons.note),label:'ລາຍການທັ້ງໝົດ'),
              BottomNavigationBarItem(icon: Icon(Icons.info),label: 'ໜ້າຄຳນວນ'),
              BottomNavigationBarItem(icon: Icon(Icons.contact_mail),label: 'ຕິດຕໍ່ພວກເຮົາ'),
              
              
            ],
          ) ,
          );
    
  
  }
}
