import 'package:e_commerce_project/views/home_page.dart';
import 'package:flutter/material.dart';

class AnimatedButtonPage extends StatefulWidget {
  const AnimatedButtonPage({super.key});

  @override
  State<AnimatedButtonPage> createState() => _AnimatedButtonPageState();
}

class _AnimatedButtonPageState extends State<AnimatedButtonPage> {
 // bool _isHovered = false;

  void _toggleHover() {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return HomePage();
      }
      )
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Button'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 10),
          curve: Curves.easeOut,
          decoration: BoxDecoration(
            //color: _isHovered ? Colors.blue : Colors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ElevatedButton(
            onPressed: _toggleHover,
            child: const Text('Hover me'),
          ),
        ),
      ),
    );
  }
}