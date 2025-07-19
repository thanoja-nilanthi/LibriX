import 'package:flutter/material.dart';
import 'package:librix/screens/home_screen.dart';
import 'package:librix/widgets/rounded_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LibriX',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 235, 213, 213),
        textTheme: Theme.of(context).textTheme.apply(
              displayColor: const Color.fromARGB(255, 39, 6, 187),
            ),
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Bitmap.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium, // Corrected style
                children: const [
                  TextSpan(
                    text: "Libri", // Fixed text (capital 'L')
                  ),
                  TextSpan(
                    text: "X.",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .6,
              child: RoundedButton(
                text: "START READING",
                fontSize: 15,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomeScreen();
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
