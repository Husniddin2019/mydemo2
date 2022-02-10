import 'package:flutter/material.dart';
import 'package:untitled1/HomePage.dart';

class DeTailPage extends StatefulWidget {
  static final String id = "DeTailPage";
  final dynamic  name ;
  final dynamic  age;

   DeTailPage({  this.name, this.age}) ;
  // const DeTailPage({Key? key}) : super(key: key);

  @override
  _DeTailPageState createState() => _DeTailPageState();
}

class _DeTailPageState extends State<DeTailPage> {
  Future _open() async {
    Navigator.of(context).push(new MaterialPageRoute(
        builder: (BuildContext context){
          return new HomePage(name: "Dart" , age: "22");
        }
    ));
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: FlatButton(
                onPressed: (){
                  _open();
                },
                child: Text(" ButtonBack")
            )
        )

    );
  }
}
