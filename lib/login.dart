import 'package:flutter/material.dart';
class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _loginState();
}

class _loginState extends State<page1> {
  var form=TextEditingController();
  var form1=TextEditingController();
  bool pass=false;
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
            Text("Welcome.",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
            SizedBox(height: 10,),
            Text("Gold to see you",style: TextStyle(fontSize: 25),),
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
                obscureText: !pass,
                obscuringCharacter: ".",
                controller: form1,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(

                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      pass=!pass;
                    });
                  }, icon: Icon(pass?Icons.visibility:Icons.visibility_off),),

                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  labelText: "Password",labelStyle: TextStyle(fontSize: 20),
                ),
              ) ,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [TextButton(onPressed: (){}, child: Text("forget password?",style: TextStyle(color: Colors.white),))],
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
                child: Text('Login',style: TextStyle(color: Colors.black),),
              ),
            ),
            SizedBox(height: 8,),
            Text("__________________ On Login With ___________________"),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Container(
                    height: 50,
                    width: 90,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple116/v4/3e/b1/31/3eb13159-067c-c7b4-0136-598aea2d6997/logo_gsa_ios_color-0-1x_U007emarketing-0-0-0-6-0-0-0-85-220-0.png/1200x600wa.png')
                    ),
                  ),
                  ),
                ),
                    SizedBox(width: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Container(
                    height: 50,
                    width: 90,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage('https://www.internetmatters.org/wp-content/uploads/2021/03/facebook-logo-new.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 130,),
            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 18,),
                Text("Dont have an account!",style: TextStyle(color: Colors.white70,fontSize: 9),),
                TextButton(onPressed: (){}, child: Text("SIGN UP",style: TextStyle(color: Colors.white70,fontSize: 10,fontWeight: FontWeight.bold),)),

              ],
            )


          ],
        ),
        
      ),
        
        
    );
  }
}

