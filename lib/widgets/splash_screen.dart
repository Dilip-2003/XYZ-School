import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:xyz_school/screens/login_screens.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}
class _MySplashScreenState extends State<MySplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 4),() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const LoginPage();
      },));
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 58, 76, 194),
      body: Center(
        child: Row( 
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [ 
            
            const Padding(
              padding:  EdgeInsets.only(left: 35),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ 
                  Text('XYZ',style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),),
                  Text('School',style:TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Lottie.asset('assets/images/student.json',height: 200,width: 200),
            ),
          ],
        ),
      ),
    );
  }
}