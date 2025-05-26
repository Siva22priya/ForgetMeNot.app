import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoadingTextScreen(),
  ));
}

class LoadingTextScreen extends StatefulWidget {
  @override
  _LoadingTextScreenState createState() => _LoadingTextScreenState();
}

class _LoadingTextScreenState extends State<LoadingTextScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fillAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    )..repeat(reverse: false);

    _fillAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6DFAB), // Soft yellow background
      body: Center(
        child: AnimatedBuilder(
          animation: _fillAnimation,
          builder: (context, child) {
            return ShaderMask(
              shaderCallback: (bounds) {
                return LinearGradient(
                  colors: [
                    Colors.brown,
                    Colors.brown,
                    Colors.brown.withOpacity(0.0),
                  ],
                  stops: [
                    0.0,
                    _fillAnimation.value,
                    (_fillAnimation.value + 0.01).clamp(0.0, 1.0),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height));
              },
              blendMode: BlendMode.srcIn,
              child: child,
            );
          },
          child: Text(
            'ForGetMeNot',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontFamily: 'SansSerif',
              letterSpacing: 2,
