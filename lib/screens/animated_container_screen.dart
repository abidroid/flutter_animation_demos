import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerScreen> createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  double _margin = 0.0;
  double _width = 200.0;
  double _opacity = 1.0;
  Color _color = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(seconds: 1),
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _margin = 50;
                  });
                },
                child: const Text('Change Margin')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _width = 250;
                  });
                },
                child: const Text('Change Width')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _color = Colors.red;
                  });
                },
                child: const Text('Change Color')),
            AnimatedOpacity(
              duration: const Duration(seconds: 2),
              opacity: _opacity,
              child: const Text(
                'HIDE ME',
                style: TextStyle(color: Colors.white),
              ),
            ),

            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _opacity = 0;
                  });
                },
                child: const Text('Change Opacity')),
          ],
        ),
      ),
    );
  }
}
