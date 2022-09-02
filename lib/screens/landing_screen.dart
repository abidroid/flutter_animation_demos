import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Topics'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Animated Container'),
            onTap: (){
              Navigator.of(context).pushNamed('/animated_container');
            },
          ),
          ListTile(
            title: const Text('Tween Animation Builder'),
            onTap: (){
              Navigator.of(context).pushNamed('/tween_animation');
            },
          ),
        ],
      ),
    );
  }
}
