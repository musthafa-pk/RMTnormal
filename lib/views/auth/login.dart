import 'package:flutter/material.dart';
import 'package:rentmything/bottomNavigationPage.dart';
import 'package:rentmything/constants/constants.dart';
import 'package:rentmything/views/myads/ongoingads.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigationPage()));
          },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('skip',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
            )),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(image: AssetImage('assets/images/login.png'))
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(width: 150,
              child: Center(child: Text('Sign in options',style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.w700,
                letterSpacing: 1,
              ),))),
          ), 

          Center(
            child: Column(
              children: [
                InkWell(
                  onTap: (){},
                  child: Button1(bgcolor: color1,label: 'Continue With Number',labelColor: Colors.white,myicon: Icons.call,iconColor: Colors.white,)),
                SizedBox(height: 10.0,),
                InkWell(
                  onTap: (){},
                  child: Button1(bgcolor: Color.fromRGBO(7,59,76, 0.14), label: 'Continue With Email',labelColor:color1, myicon: Icons.email_outlined,iconColor: color1,)),
              ],
            ),
          ),

          Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account? ',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),),
                  InkWell(
                    onTap: (){},
                    child: Text('Sign Up',style: TextStyle(color: Colors.red,fontWeight: FontWeight.w400,fontSize: 10
                    ),)),
                ],
              ),

              SizedBox(height: 10,),

        ],
      ),
    );
  }
}

class Button1 extends StatelessWidget {
  Color bgcolor;
  IconData myicon;
  Color iconColor;
  String label;
  Color labelColor;
   Button1({
    required this.bgcolor,
    required this.label,
    required this.iconColor,
    required this.labelColor,
    required this.myicon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width/1.1,
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(16)
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Icon(myicon,color: iconColor,),
          SizedBox(width: 10,),
          Text('${label}',style: TextStyle(color: labelColor,
          fontSize: 13,
          fontWeight: FontWeight.w500,
          letterSpacing: 1),)
        ]),
      ),
    );
  }
}