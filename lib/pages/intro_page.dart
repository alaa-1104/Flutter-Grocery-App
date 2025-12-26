import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';
class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
              padding:const EdgeInsets.only(
                left: 80.0, right:80 , bottom: 40,top: 160.0
              ),
              child: Image.asset('assets/images/avoca.png'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("we deliver groceries at your doorstep",
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(fontSize: 36,fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 24),
          Text("fresh items every day"),
          const Spacer(),
          GestureDetector(
            onTap:() => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context){return const HomePage();})
            ),
            child: Container(
              decoration: BoxDecoration(color: Colors.deepPurple,),
              padding:const EdgeInsets.all(24),
              child: const Text("Get Started",style: TextStyle(color: Colors.white),
               ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
