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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back,color: Color(0xffFE8074),)),
        title: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Text("Personal",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          
            
            
            child: Column(
              children: [
                Container(
                  
                  margin: EdgeInsets.only(top: 10,right: 20,left: 20),
                  decoration: BoxDecoration(
                    color:Color(0xffF3F3F3),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text("MY First name is",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
      
                )
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'john Doe',
                      contentPadding: EdgeInsets.only(left: 100),
                      hintStyle: TextStyle(color: Color(0xfffca69e)),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: UnderlineInputBorder(
         borderSide: BorderSide(color: Colors.grey),
                    ),
                    ),
                    
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text("This is how it will appear in Dater.",
                // style: TextStyle(
                //   color: Colors.greenAccent,
                // ),
                ),
                SizedBox(
                  height: 30,
                )
                    ],
                  ),
                ),
      
                SizedBox(
                  height: 10,
                ),
              // Birthday container 
      
      
              Container(
                  
                  margin: EdgeInsets.only(top: 10,right: 20,left: 20),
                  decoration: BoxDecoration(
                    color:Color(0xffF3F3F3),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text("My birthday is",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
      
                )
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'DD - MM - YYYY',
                      contentPadding: EdgeInsets.only(left: 80),
                      hintStyle: TextStyle(color: Color(0xff9d9d9d)),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: UnderlineInputBorder(
         borderSide: BorderSide(color: Colors.grey),
                    ),
                    ),
                    
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text("Your age will public",
                style: TextStyle(
                  color: Color(0xffaaaaaa),
                ),
                ),
                SizedBox(
                  height: 30,
                )
                    ],
                  ),
                ),
      
      
                //Radio button 
      
                 Container(
                  
                  margin: EdgeInsets.only(top: 10,right: 20,left: 20),
                  decoration: BoxDecoration(
                    color:Color(0xffF3F3F3),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text("Gender",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
      
                )
                ),
               
              
                SizedBox(
                  height: 30,
                ),
      
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('Female'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: Radio(value: 1, groupValue: 'null', onChanged: (index){}),
                    )
                  ],
                ),
      
                 Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('male'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 215),
                      child: Radio(value: 1, groupValue: 'null', onChanged: (index){}),
                    )
                  ],
                ),
      
      
                     Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('Non-Binary'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 175),
                      child: Radio(value: 1, groupValue: 'null', onChanged: (index){}),
                    )
                  ],
                ),
      
                 Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('Transgender Female'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 115),
                      child: Radio(value: 1, groupValue: 'null', onChanged: (index){}),
                    )
                  ],
                ),
                 Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Transgender Male'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 130),
                    child: Radio(value: 1, groupValue: 'null', onChanged: (index){}),
                  )
                ],
              ),

               Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Transgender'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 165),
                    child: Radio(value: 1, groupValue: 'null', onChanged: (index){}),
                  )
                ],
              ),


       

              
      
                    ],
                  ),
                ),
      
                       //Sexuality 


                          Container(
                  
                  margin: EdgeInsets.only(top: 10,right: 20,left: 20),
                  decoration: BoxDecoration(
                    color:Color(0xffF3F3F3),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text("Sexulity",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
      
                )
                ),
               
              
                SizedBox(
                  height: 30,
                ),
      
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('Straight'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: Radio(value: 1, groupValue: 'null', onChanged: (index){}),
                    )
                  ],
                ),
      
                 Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('male'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 215),
                      child: Radio(value: 1, groupValue: 'null', onChanged: (index){}),
                    )
                  ],
                ),
      
      
                     Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('Non-Binary'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 175),
                      child: Radio(value: 1, groupValue: 'null', onChanged: (index){}),
                    )
                  ],
                ),
      
                 Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('Transgender Female'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 115),
                      child: Radio(value: 1, groupValue: 'null', onChanged: (index){}),
                    )
                  ],
                ),
                 Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Transgender Male'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 130),
                    child: Radio(value: 1, groupValue: 'null', onChanged: (index){}),
                  )
                ],
              ),

               Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Transgender'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 165),
                    child: Radio(value: 1, groupValue: 'null', onChanged: (index){}),
                  )
                ],
              ),


       

              
      
                    ],
                  ),
                )

              ],
            ),
          
        ),
      ),
      
    );
  }
}