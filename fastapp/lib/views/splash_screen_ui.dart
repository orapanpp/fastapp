import 'package:fastapp/views/home_ui.dart';
import 'package:flutter/material.dart';

class SplashscreenUI extends StatefulWidget {
  const SplashscreenUI({Key? key}) : super(key: key);

  @override
  State<SplashscreenUI> createState() => _SplashscreenUIState();
}

class _SplashscreenUIState extends State<SplashscreenUI> {
  @override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeUI(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage(
                'assets/images/fastapp.png',
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'โทรด่วน by อรพรรณ',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            CircularProgressIndicator(
              color: Colors.blue,
              strokeWidth: 6.0,
            ),
          ],
        ),
      ),
    );
  }
}
