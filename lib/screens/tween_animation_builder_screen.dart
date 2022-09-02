import 'package:flutter/material.dart';

class TweenAnimationBuilderScreen extends StatelessWidget {
  const TweenAnimationBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 10),
        child: TweenAnimationBuilder(
          duration: const Duration(seconds: 1),
            tween: Tween<double>(begin: 0, end: 1),
            builder: (BuildContext context, double? val, child){
            return Opacity(opacity: val!, child: Padding(
                padding: EdgeInsets.only(top: val! * 20),
                child: child),);
            },
            child: const Text('IntelliLogics', style: TextStyle(fontSize: 20, color: Colors.white),)),
      ),
    );
  }
}
