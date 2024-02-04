import 'package:flutter/material.dart';
import 'package:flutter_06_login/pages/login_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.keyboard_arrow_left_sharp, color: Colors.white, size: 70,),
                Icon(Icons.keyboard_arrow_right_sharp, color: Colors.white, size: 70,),
              ],
            ),

              SizedBox(height: 25,),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: Text('Jump straight into the action', style: TextStyle(color: Colors.grey[300], fontSize: 16),),
            ),
            SizedBox(
              width: 160,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
              }, child: Text('Get started', style: TextStyle(fontWeight: FontWeight.bold),),))
          ],
        ),
      ),
    );
  }
}