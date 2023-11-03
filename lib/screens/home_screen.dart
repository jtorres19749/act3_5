import 'package:flutter/material.dart';


//image from <a href="https://www.vecteezy.com/free-photos">Free Stock photos by Vecteezy</a>
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UDG Diseño de aplicaciones móviles'), 
      ), 
      body: 
      Container(
        width: double.infinity,
        decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/backgroud.jpg"),
                fit: BoxFit.cover,
              ),
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
