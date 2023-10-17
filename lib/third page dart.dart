import 'package:flutter/material.dart';
class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {

  var form=TextEditingController();
  var form1=TextEditingController();
  var form2=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(),
        ),
        body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 30,),
                Text("Sign Up",style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold ),),
                SizedBox(height: 23,),
                Text("Welcome back ! Login with your credentials",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),

                SizedBox(height: 30,),

                // Text("E mail",textAlign:S ,style: TextStyle(fontSize: 15),),

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

                SizedBox(height: 30,),

                Padding(padding: const EdgeInsets.only(left: 8,right: 8),
                  child:TextField(
                    obscureText: true,
                    obscuringCharacter: "^",
                    controller: form1,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                      labelText: "Enter password",labelStyle: TextStyle(fontSize: 20),
                    ),
                  ) ,
                ),
                SizedBox(height: 35,),

                Padding(padding: const EdgeInsets.only(left: 8,right: 8),
                  child:TextField(
                    obscureText: true,
                    obscuringCharacter: "^",
                    controller: form2,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                      labelText: "Confirm password",labelStyle: TextStyle(fontSize: 20),
                    ),
                  ) ,
                ),
                SizedBox(height: 35,),


                InkWell(
                  onTap: (){},
                  child: Container(
                    height: 68,
                    width: 340,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(25),

                    ),
                    alignment: Alignment.center,
                    child: Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 26),),
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                          child: Row(
                            children: [
                              Text("Already have an account",style: TextStyle(fontSize: 15,color: Colors.black),),
                              TextButton(onPressed: (){}, child:

                              Text("Login",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),)
                              ),

                            ],
                          )
                      ),

                    ]


                ),

              ],
            ),
          ),
        )
    );
  }
}