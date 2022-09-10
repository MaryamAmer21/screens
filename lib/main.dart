import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
 import 'package:lottie/lottie.dart';
 import 'package:screens/login_page.dart';
 import 'package:screens/introduction_screen.dart';
import 'package:screens/otpScreen.dart';

 void main() {
  runApp(const MyApp());
  runApp(const App());
  runApp(const second());
  runApp(const otp());
 }

class otp extends StatelessWidget {
  const otp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo',
        home :otpScreen(),
    );
  }
}


class second extends StatelessWidget {
  const second({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:IntroScreen(),
    );
  }
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:LoginPage(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
        home: Splash() ,
     );
  }
}
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.network('https://assets6.lottiefiles.com/private_files/lf30_hsabbeks.json'),
            const SizedBox(height: 30,),
            Text( 'App Name',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),),


          ],
        ),
      ),
    );
  }
}
