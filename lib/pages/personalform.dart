import 'package:flutter/material.dart';

class PersonForm extends StatefulWidget {
  const PersonForm({ Key? key }) : super(key: key);

  @override
  _PersonFormState createState() => _PersonFormState();
}

class _PersonFormState extends State<PersonForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back),
        title: Text("Personal"),
      ),
      body: Center(
        child: Container(
          
          margin: EdgeInsets.only(top: 10,right: 20,left: 20),
          child: Column(
            children: [
              Text("MY Firstnae is",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,

              )
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'john Doe',hintStyle: TextStyle(color: Colors.red),
                  enabledBorder: UnderlineInputBorder(
       borderSide: BorderSide(color: Color(0xFF6200EE)),
                ),
                )
              ),
              Text("")
            ],
          ),
        ),
      ),
      
    );
  }
}