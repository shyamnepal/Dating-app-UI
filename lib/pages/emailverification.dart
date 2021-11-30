import 'package:datingapp/auth/otpverification.dart';
import 'package:flutter/material.dart';

class EmailVerification extends StatefulWidget {
  const EmailVerification({Key? key}) : super(key: key);

  @override
  _EmailVerificationState createState() => _EmailVerificationState();
}

class _EmailVerificationState extends State<EmailVerification> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Row(
            children:  [
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Color(0xffFD877B),
                ),
              ),
              
            ],
          ),
        ),
        body: Center(
            child: Column(
          children: [
            Text(
              "My email is",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Material(
                //shadowColor: Colors.grey,
                elevation: 5,
                child: TextFormField(
                    decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "emial",
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                )),
              ),
            ),
          
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: RichText(
                   text: const TextSpan(
                     children: [
                       TextSpan(
                         text: """when you tap "Contnue", Dater will send a\na text whth verification code. Message and data\nrates may apply. The verified email\n can be used to log in.""",
                     style: TextStyle(color: Colors.black)
                     
                       ),
                       TextSpan(
                         text: "Learn what happens\n       when your email changes",
                         style: TextStyle(
                           color: Colors.black,
                           fontWeight: FontWeight.bold,
                           fontSize: 15
                         )
                       )
                     ]),
                     ),
                ),


                Padding(
               padding: const EdgeInsets.only(top: 30),
               child: SizedBox(
                 height: 50,
                 width: 250,
                 child: ElevatedButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>const OtpVerifcation()));
                 },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,),
                    child:Text("continue")
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffFD877B),
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                  ),
                  ),
               ),
             ),
          ],
        )),
      ),
    );
  }
}
