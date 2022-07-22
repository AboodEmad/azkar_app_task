import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LunchScreen extends StatefulWidget {
  const LunchScreen({Key? key}) : super(key: key);

  @override
  State<LunchScreen> createState() => _LunchScreenState();
}

class _LunchScreenState extends State<LunchScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //TODO: NAVIGATE TO HOME SCREEN
    Future.delayed(Duration(seconds: 3),(){
      // here navigate and the lunchScreen still in the backStack
      //Navigator.pushNamed(context, "/home_screen");

      // here navigate and replace the lunchScreen with the homeScreen
      Navigator.pushReplacementNamed(context, "/home_screen");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "appBar",
          style: GoogleFonts.adventPro(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        alignment: AlignmentDirectional.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topCenter,
            end: AlignmentDirectional.bottomCenter,
            colors: [
              Color(0xffF7EDDB),
              Color(0xffDFE8CC),
            ]
          )
        ),
        child: Text(
          "aboodEmad",
          style: GoogleFonts.aclonica(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            fontStyle: FontStyle.normal,
            color: Colors.lightBlue,

          ),
        ),
      ),
    );
  }
}
