import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:act3_5/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State <SplashScreen> createState() => _SplasScreenState();
}

class _SplasScreenState extends State<SplashScreen> 
    with SingleTickerProviderStateMixin {
  @override 
  void initState() {
      super.initState();
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

      Future.delayed(const Duration(seconds: 2), () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_)=> const HomeScreen(),
          )
        );
      });
  }

  @override 
  void dispose() {
      super.initState();
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values
      );
      super.dispose();
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [ Colors.blue, Colors.purple],
              begin:  Alignment.topRight,
              end: Alignment.bottomLeft
            )
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
                Icons.edit,
                size: 80,
                color: Colors.white
            ),
            SizedBox( height: 20,)  ,
            Text(
              'Apps Act 3.5',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.white,
                fontSize: 20
              ),
            )
          ],
        ),
      ),
    );
  }
}
