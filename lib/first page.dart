import 'package:flutter/material.dart';
import 'package:today/second%20page.dart';
import 'package:today/third%20page%20dart.dart';
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Text("Hello There!",style: TextStyle(
                fontSize: 50,
                color: Colors.black,
              ),),
              SizedBox(height: 18,),
              Text("Automatic identity verification which enable you to verify your identity",textAlign:TextAlign.center,style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),),
              SizedBox(height: 18,),
              Container(
                height: 400,
                width: 300,
                decoration:BoxDecoration(
                  image: DecorationImage(image: NetworkImage('https://previews.123rf.com/images/microone/microone1808/microone180800930/106838741-child-at-computer-cartoon-boy-learning-at-desk-with-laptop-student-studying-code-vector-concept.jpg'
                  )
                )
                )
              ),
              SizedBox(height: 18,),
              InkWell(
                onTap: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>sec()));

                },
                child: Container(
                  height: 68,
                 width :340,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  alignment: Alignment.center,
                  child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 26),),
                ),
              ),
              SizedBox(height: 10,),
               InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>second()));
                },
                child: Container(
                 height: 68,
                 width:340,
                 decoration: BoxDecoration(
                   color: Colors.red,
                   borderRadius: BorderRadius.circular(30),
                 ),
                  alignment: Alignment.center,
                  child: Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 30),),
                ),
               ),
            ],
          ),
          ),
        
        
      ),
    );
  }
  
}
