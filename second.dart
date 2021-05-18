import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
   var ctl_product = TextEditingController();
  var ctl_price = TextEditingController();
  var ctl_quantity = TextEditingController();
  var result = '😘😘😘 ສະຖານະ 😘😘😘';
  var result2 = '------ສະຖານະ------';


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
            padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: TextField(
              controller: ctl_product,
              decoration: InputDecoration(
                  labelText: 'ສີນຄ້າ', border: OutlineInputBorder()),
            )),
        Padding(
            padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: TextField(
              controller: ctl_price,
              decoration: InputDecoration(
                  labelText: 'ລາຄາ', border: OutlineInputBorder()),
            )),
        Padding(
            padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: TextField(
              controller: ctl_quantity,
              decoration: InputDecoration(
                  labelText: 'ຈຳນວນ', border: OutlineInputBorder()),
            )),
        Padding(
            padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: ElevatedButton(
              style: raisedButtonStyle,
              onPressed: () {
                var v1 = int.parse(ctl_price.text);
                var v2 = int.parse(ctl_quantity.text);
                var calculate = v1 * v2;
                print("Cal: $calculate Baht ");
                var productname = ctl_product.text;
                setState(() {
                  result =
                      "ສີນຄ້າ: $productname\nລາຄາ: $v1\nຈຳນວນ: $v2\nລມວທັ້ງໝົດ: $calculate ກີບ";
                  
                  
                });
              },
              child: Text('ຄຳນວນ'),
            )),
            Padding(
            padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: Text(
              result,
              style: TextStyle(fontSize: 30.0),
            )),

      ],
    ); 
  }
}
final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.blue[400],
  primary: Colors.blue[900],
  minimumSize: Size(88, 50),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)),
  ),
);
