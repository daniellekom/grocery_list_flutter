import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //logo
          Padding(
            padding: const EdgeInsets.only(
               left: 80.0,right: 80,bottom: 80,top:120
            ),
            child: Image.asset('lib/images/avocado.png'),
          ),

          // text we deliver groceries at your door step
          const Padding(
            padding: EdgeInsets.all( 20.0),
            child: Text(
              "We deliver groceries at your door step",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
