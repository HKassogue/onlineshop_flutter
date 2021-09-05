import 'package:flutter/material.dart';

// This is the best practicec
import '../components/splash_content.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final List<Map<String, String>> splashData = [
    {
      "text": "Bienvenu à Mali sugu, le shoping en toute simplicité !",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
      "Aider à faire du shoping partout au Mali",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "Facile à faire votre shoping partout où vous êtes.\nConnectez-vous et découvrez les produits !",
      "image": "assets/images/splash_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  text: splashData[index]["text"],
                  image: splashData[index]["image"]
                ),
              )
            ),
            Expanded(
              flex: 2,
              child: SizedBox()
            )
          ],
        ),
      ),
    );
  }
}
