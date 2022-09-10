import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:screens/HomeScreen.dart';
class IntroScreen extends StatelessWidget {
  IntroScreen({Key? key}) : super(key: key);
  final List<PageViewModel> pages=[
    PageViewModel(
        title: 'Request a Ride',
        body: 'Request a ride get picked up'
            ' by a nearby community driver.',
        footer: ElevatedButton(
          onPressed: (){},
          child: const Text('Next'),
        ),
        image: Center(
          child: Image.asset('assets/first.png'),
        ),
        decoration:  const PageDecoration(
            titleTextStyle: TextStyle(
              fontSize:25 ,
              fontWeight: FontWeight.bold,

            )
        )
    ),
    PageViewModel(
        title: ' Live Ride Tracking ',
        body: 'Know your driver in advance and be able to'
            ' view current location in real time on the map.',
        footer: ElevatedButton(
          onPressed: (){},
          child: const Text('Next'),
        ),
        image: Center(
          child: Image.asset('assets/third.png'),
        ),
        decoration:  const PageDecoration(
            titleTextStyle: TextStyle(
              fontSize:25 ,
              fontWeight: FontWeight.bold,

            )
        )
    ),
    PageViewModel(
        title: 'Chat with the driver',
        body: ' The passenger can chat with the driver'
            ' to speed up and ensure access.',
        footer: ElevatedButton(
          onPressed: (){},
          child: const Text('Next'),
        ),
        image: Center(
          child: Image.asset('assets/3.jpg'),
        ),
        decoration:  const PageDecoration(
            titleTextStyle: TextStyle(
              fontSize:25 ,
              fontWeight: FontWeight.bold,

            )
        )
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: pages,
        dotsDecorator: const DotsDecorator(
          size: Size(10,  10),
          color: Colors.teal,
          activeSize: Size.square( 15),
          activeColor: Colors.deepPurpleAccent,
        ),
        showDoneButton: true,
        done: const Text('Done',style: TextStyle(fontSize: 20),),
        showSkipButton: true,
        skip: const Text('Skip',style: TextStyle(fontSize: 20),),
        showNextButton: true,
        next: const Icon(Icons.arrow_forward,size: 20,),
        onDone: ()=>onDone(context),
      ),
    );
  }
  void onDone(context){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
  }
}