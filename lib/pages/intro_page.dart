import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //logo
          Padding(
            padding: const EdgeInsets.only(left: 80.0, right: 80, bottom: 40, top: 160),
            child: Image.asset('lib/images/avocado.png'),
          ),

          // text we deliver groceries at your door step
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "We deliver groceries at your door step",
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          // subtitle
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: Text(
              "Fresh items from your local grocer, fruits, vegetables and more!",
              textAlign: TextAlign.center,
              style: GoogleFonts.aBeeZee(fontSize: 12, letterSpacing: 2, color: Colors.grey.shade800),
            ),
          ),

          const Spacer(),

          // get started button
          GestureDetector(
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) {
                return HomePage();
              },
            )),
            child: Container(
              decoration: BoxDecoration(color: Colors.orange.shade800, borderRadius: BorderRadius.circular(30)),
              padding: const EdgeInsets.all(20),
              child: const Text(
                "Get Started",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

          const Spacer(),
        ],
      ),
    );
  }
}
