import 'package:flutter/material.dart';
class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _loginState();
}

class _loginState extends State<page2> {
  var form=TextEditingController();
  var form1=TextEditingController();
  var form2=TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors:[
                  Colors.blue,
                  Colors.red,
                ] )
        ),
        child: Column(
          children: [
            SizedBox(height: 100,),
            Text("Create an account",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
            SizedBox(height: 10,),
            Text("to get started now!",style: TextStyle(fontSize: 25),),
            SizedBox(height: 15,),
            Padding(padding: const EdgeInsets.only(left: 8,right: 8),
              child:TextField(

                controller: form,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  labelText: "enter email",labelStyle: TextStyle(fontSize: 20),
                ),
              ) ,
            ),
            SizedBox(height: 15,),
            Padding(padding: const EdgeInsets.only(left: 8,right: 8),
              child:TextField(

                controller: form1,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  labelText: "Password",labelStyle: TextStyle(fontSize: 20),
                ),
              ) ,
            ),
            SizedBox(height: 15,),
            Padding(padding: const EdgeInsets.only(left: 8,right: 8),
              child:TextField(

                controller: form2,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  labelText: "Comform password",labelStyle: TextStyle(fontSize: 20),
                ),
              ) ,
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){},
              child: Container(
                height: 50,
                width:300,
                decoration: BoxDecoration(
                  color: Colors.white,




                  borderRadius: BorderRadius.circular(25),
                ),
                alignment: Alignment.center,
                child: Text('Sign Up',style: TextStyle(color: Colors.black),),
              ),
            ),
            SizedBox(height: 8,),
            Text("____________________________________________________________________ On Sign Up With ___________________________________________________________________"),
            SizedBox(height: 30,),
            Row(
              children:[
              InkWell(
              onTap: (){},
              child: Container(
                height: 50,
                width:100,
                decoration: BoxDecoration(
                  color: Colors.white,





                ),
                alignment: Alignment.center,
                child:  Container(

                    decoration:BoxDecoration(
                        image: DecorationImage(image: NetworkImage('https://blog.hubspot.com/hubfs/image8-2.jpg'
                        ),
                        ),
                    ),
                ),
              ),
            ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: 50,
                    width:100,
                    decoration: BoxDecoration(
                      color: Colors.white,





                    ),
                    alignment: Alignment.center,
                    child:  Container(

                      decoration:BoxDecoration(
                        image: DecorationImage(image: NetworkImage('https://img.freepik.com/premium-vector/blue-social-media-logo_197792-1759.jpg'
                        ),
                        ),
                      ),
                    ),
                  ),
                ),
      ],
    ),


          ],
        ),

      ),


    );
  }
}

