import 'package:flutter/material.dart';
import 'package:untitled1/DetailsPage.dart';
class HomePage extends StatefulWidget {
  static final String id = "HomePage";
  //const HomePage({Key? key}) : super(key: key);
  final dynamic  name;
  final dynamic  age;

  HomePage({this.name, this.age}) ;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Future _open() async {
    Navigator.of(context).push(new MaterialPageRoute(
        builder: (BuildContext context){
    return new DeTailPage(name: "hello" , age: "22");
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
            child: Text( "keyingi saxifaga")
        )
        )
    );
  }
}
