import 'package:animation/animationpage.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("A N I M A T I O N",style: TextStyle(color: Colors.white,fontSize:30),),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 102, 178, 240),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: 
                LinearGradient(
                    colors: [Colors.blue, Colors.purple, Colors.pink],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                ),
                    ),
          ),
          SafeArea(child: Center(child: AnimationPage())),
        ],
      ),
    );
  }
}
