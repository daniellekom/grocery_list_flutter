import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 48,
            ),
            // Good morning text,
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Good Morning,"),
            ),
            const SizedBox(
              height: 4,
            ),

            // Lets order fresh items for you text
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Let's order fresh items for you",
                style: GoogleFonts.notoSerif(fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 24,),
            //divider
            const Divider(),

            //fresh items + grid
          ],
        ),
      ),
    );
  }
}
