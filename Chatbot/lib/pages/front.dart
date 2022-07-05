import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Front extends StatefulWidget {
  const Front({Key? key}) : super(key: key);

  @override
  State<Front> createState() => _FrontState();
}

class _FrontState extends State<Front> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(239, 255, 255, 255),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/BG.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 60.0, 0.0, 0.0),
                  child: Image.asset(
                    'assets/giphy.gif',
                    height: 220,
                    width: 220,
                    color: Colors.white,
                    colorBlendMode: BlendMode.darken,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 20.0),
              child: SizedBox(
                height: 63.0,
                child: Text(
                  'ChatApp',
                  style: TextStyle(
                    fontFamily: 'Dekko',
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange[600],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 20.0),
              child: SizedBox(
                height: 40.0,
                child: Text(
                  'Your personalized bot Betty!!!',
                  style: TextStyle(
                    fontFamily: 'Dekko',
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 70.0, 0.0, 40.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/chat');
                },
                child: Text(
                  'Lets Talk!',
                  style: TextStyle(
                    fontFamily: 'Dekko',
                    fontSize: 30.0,
                    letterSpacing: 2.0,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 50.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}