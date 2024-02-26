import 'dart:math' as math;
import 'dart:ui' as ui; // Import the dart.ui library

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Circular Progress Bar Example'),
        ),
        body: Center(
          child: CircularProgressBar(
            value: 70, // Current progress
            total: 100, // Total progress
            color: Colors.blue,
            strokeWidth: 6.0,
            radius: 100.0,
            backgroundColor: Colors.grey[300],
          ),
        ),
      ),
    );
  }
}

class CircularProgressBar extends StatelessWidget {
  final double value; // Current progress
  final double total; // Total progress
  final Color color; // Color of the progress indicator
  final double strokeWidth; // Width of the progress indicator
  final double radius; // Radius of the circular progress bar
  final Color? backgroundColor; // Background color for complete circle

  const CircularProgressBar({
    required this.value,
    required this.total,
    this.color = Colors.blue,
    this.strokeWidth = 4.0,
    required this.radius,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: radius * 2,
      height: radius * 2,
      child: CustomPaint(
        painter: CircularProgressBarPainter(
          value: value,
          total: total,
          color: color,
          strokeWidth: strokeWidth,
          backgroundColor: backgroundColor,
        ),
        child: Center(
          child: Text(
            '${value.toInt()}/$total',
            style: TextStyle(
              fontSize: radius / 3.5,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class CircularProgressBarPainter extends CustomPainter {
  final double value; // Current progress
  final double total; // Total progress
  final Color color; // Color of the progress indicator
  final double strokeWidth; // Width of the progress indicator
  final Color? backgroundColor; // Background color for complete circle

  CircularProgressBarPainter({
    required this.value,
    required this.total,
    required this.color,
    required this.strokeWidth,
    this.backgroundColor,
  });

  @override
  void paint(Canvas canvas, ui.Size size) { // Use 'ui.Size' instead of 'Size'
    final double _arcAngle = 2 * math.pi * value / total;
    final Offset center = Offset(size.width / 2, size.height / 2);
    final double radius = size.width / 2;

    // Draw background circle
    if (backgroundColor != null) {
      final Paint backgroundPaint = Paint()
        ..color = backgroundColor!
        ..strokeWidth = strokeWidth
        ..style = PaintingStyle.stroke;

      canvas.drawCircle(center, radius, backgroundPaint);
    }

    // Draw progress arc
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -math.pi / 2,
      _arcAngle,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
