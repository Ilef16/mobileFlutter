import 'package:flutter/material.dart';
import 'package:flutterr/pages/Index.page.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
@override
void initState(){
  super.initState();
  _navigatetohome();

}

_navigatetohome()async{
  await Future.delayed(Duration(milliseconds :2000), (){});
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Index()));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 100, width:  100, color:Colors.blue,
        
            ),
            Container(
              child:Text('Splash Screan' ,style:TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              
              ))
            ),
          ],
        ),
      ) ,
    );
  }
}