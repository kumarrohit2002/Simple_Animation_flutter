import 'package:flutter/material.dart';

class animationPage extends StatefulWidget {
  const animationPage({super.key});

  @override
  State<animationPage> createState() => _animationPageState();
}

class _animationPageState extends State<animationPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    late AnimationController _controller;
    late Animation<double> _sizeAnimation;

    @override
    void initState() {
      _controller =
          AnimationController(vsync: this, duration: Duration(seconds: 1));
      _controller.addListener(() {
        setState(() {});
      });
      _sizeAnimation = Tween<double>(
        begin: 24,
        end: 72,
      ).animate(_controller);
      _controller.forward();

      super.initState();
    }

    return Container(
      height: _sizeAnimation.value,
      width: _sizeAnimation.value,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(_sizeAnimation.value/2),
        color: Colors.white,
      ),
    );
  }
}
