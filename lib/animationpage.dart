import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _sizeAnimation;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _sizeAnimation = Tween<double>(
      begin: 20,
      end: 150,
    ).animate(_controller);

    // Start the animation
    _controller.forward();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Container(
          // height: _sizeAnimation.value,
          // width: _sizeAnimation.value,
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(_sizeAnimation.value/2),
          //   color: Colors.white,
          // child: Icon(Icons.sunny),
          child: Icon(Icons.sunny,size: _sizeAnimation.value,color: Colors.orange),
        );

        // );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
