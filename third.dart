import 'package:flutter/material.dart';
class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [Padding(padding: EdgeInsets.fromLTRB(50, 20, 50, 2),
      child: Image.asset('images/Unclemedia001.png',scale: 0.5),
      ),
      Padding(padding: EdgeInsets.fromLTRB(50, 20, 50, 2),
      child: Text('ສະບາຍດີ !!! ທຸກທ່ານ ສາມາດຕິດຕໍ່ລຸງໄດ້ທີ່ຊ່ອງ Youtube "Uncle media" ຫຼື ເພຈ: @Unclemedia0 ',
      style: TextStyle(fontSize: 20,fontFamily: 'Phetsarath OT'),
      ),
      )
      ],
    );
  }
}