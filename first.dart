import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [Padding(padding: EdgeInsets.fromLTRB(50, 20, 50, 2),
      child: Image.asset('images/Unclemedia001.png',scale: 0.5),
      ),
      Padding(padding: EdgeInsets.fromLTRB(50, 20, 50, 2),
      child: Text('ຂໍອາໄພ! ຄວາມບໍ່ສະດວກເນື່ອງທັ້ງເເອບເຮົາກຳລັງພັດທະນາຢູ່!!!',
      style: TextStyle(fontSize: 20,fontFamily: 'Phetsarath OT'),
      ),
      )
      ],
    );
  }
}