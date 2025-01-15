import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../../../../../../core/theme/app_colors.dart';

class ProgressCircle extends StatelessWidget {
  final double percentage;
  final double size;
  final Color backgroundColor;
  final Color progressColor;

  const ProgressCircle({
    super.key,
    required this.percentage,
    this.size = 100,
    this.backgroundColor = AppColors.grey,
    this.progressColor = AppColors.white,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: Stack(
        children: [
          CustomPaint(
            size: Size(size, size),
            painter: CircleProgressPainter(
              percentage: percentage,
              backgroundColor: backgroundColor,
              progressColor: progressColor,
            ),
          ),
          Center(
            child: Text(
              '${percentage.toStringAsFixed(1)}%',
              style: TextStyle(
                fontSize: size * 0.18,
                fontWeight: FontWeight.w600,
                color: AppColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CircleProgressPainter extends CustomPainter {
  final double percentage;
  final Color backgroundColor;
  final Color progressColor;

  CircleProgressPainter({
    required this.percentage,
    required this.backgroundColor,
    required this.progressColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = math.min(size.width / 2, size.height / 2) - 10;
    final strokeWidth = size.width * 0.1;

    // رسم دائرة الخلفية
    final backgroundPaint = Paint()
      ..color = backgroundColor.withOpacity(0.2)
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(center, radius, backgroundPaint);

    // رسم دائرة التقدم
    final progressPaint = Paint()
      ..color = progressColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final progressAngle = 2 * math.pi * (percentage / 100);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -math.pi / 2, // نقطة البداية (الأعلى)
      progressAngle,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
