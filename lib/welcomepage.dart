import 'package:doctors_pecialist/Doctor.dart';
import 'package:flutter/material.dart';

class welcomepage extends StatefulWidget {
  final Doctor doctordetail;
  const welcomepage({Key key,  this.doctordetail}) : super(key: key);

  @override
  State<welcomepage> createState() => _welcomepageState();
}
class _welcomepageState extends State<welcomepage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text("Welcome Page"),
        ),
        body:Center(
          child: Container(
             //color:Colors.teal,
            height: 200,
            width: 150,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 2

              ),
              gradient: LinearGradient(colors: [Colors.red, Colors.yellow]),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(children: [
              const SizedBox(
                  height: 20,
              ),

            CircleAvatar(
              backgroundImage: AssetImage(widget.doctordetail.pic),
              radius: 40,// no matter how big it is, it won't overflow
            ),
              const SizedBox(
                height: 20,
              ),
            Text("Name:${widget.doctordetail.name}"),
              const SizedBox(
                height: 10,
              ),
            Text("Specialization:${widget.doctordetail.specification}"),


          ],),),
        )

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}