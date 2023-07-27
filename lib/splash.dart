import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: Insta(),
  ));
}

class Insta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (Rect bounds) => const RadialGradient(
            center: Alignment.topCenter,


            stops: [.5, 1,3],
            colors: [
              Colors.pink,
              Colors.yellow,
              Colors.blue,
            ],


          ).createShader(bounds),
          child: FaIcon(FontAwesomeIcons.instagram,
            size: 100,
          ),
        ),
        // FaIcon(FontAwesomeIcons.instagram),

      ),
    );
  }
}
