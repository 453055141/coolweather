import 'package:flutter/material.dart';

class SunnyNightAnim extends StatefulWidget {
  @override
  _SunnyNightAnimState createState() => _SunnyNightAnimState();
}

class _SunnyNightAnimState extends State<SunnyNightAnim>
    with TickerProviderStateMixin {
  AnimationController controller;

  double radians = 0;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(days: 365 * 999),
    )..addListener(() {
        setState(() {
          radians += 0.01;
        });
      });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: SunnyNightPainter(radians));
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}

Paint maskPaint = new Paint()
  ..style = PaintingStyle.fill
  ..color = Color(0xFF061324);

Paint paint_1 = new Paint()
  ..style = PaintingStyle.stroke
  ..color = Color(0xFF8DE6E0)
  ..strokeWidth = 1;

Paint paint_2 = new Paint()
  ..style = PaintingStyle.stroke
  ..color = Color(0xFFD0FCFB)
  ..strokeWidth = 1;

Paint paint_3 = new Paint()
  ..style = PaintingStyle.stroke
  ..color = Color(0xFF739698)
  ..strokeWidth = 1;

Paint paint_4 = new Paint()
  ..style = PaintingStyle.stroke
  ..color = Color(0xFF749799)
  ..strokeWidth = 1;

Paint paint_5 = new Paint()
  ..style = PaintingStyle.stroke
  ..color = Color(0xFFC8FFF9)
  ..strokeWidth = 2;

Paint paint_6 = new Paint()
  ..style = PaintingStyle.stroke
  ..color = Color(0xFF84EADF)
  ..strokeWidth = 1.5;

Paint paint_7 = new Paint()
  ..style = PaintingStyle.stroke
  ..color = Color(0xFFCAFFF9)
  ..strokeWidth = 1.5;

Paint paint_8 = new Paint()
  ..style = PaintingStyle.stroke
  ..color = Color(0xFFFFFFFF)
  ..strokeWidth = 2;

Paint paint_9 = new Paint()
  ..style = PaintingStyle.stroke
  ..color = Color(0xFFCAFFF9)
  ..strokeWidth = 1.5;

Paint paint_10 = new Paint()
  ..style = PaintingStyle.stroke
  ..color = Color(0xFF94E3E0)
  ..strokeWidth = 1;

Paint paint_11 = new Paint()
  ..style = PaintingStyle.stroke
  ..color = Color(0xFFFFFFFF)
  ..strokeWidth = 2;

Paint paint_12 = new Paint()
  ..style = PaintingStyle.stroke
  ..color = Color(0xFF84EADF)
  ..strokeWidth = 1.5;

Paint paint_13 = new Paint()
  ..style = PaintingStyle.stroke
  ..color = Color(0xFF739698)
  ..strokeWidth = 1;

Paint paint_14 = new Paint()
  ..style = PaintingStyle.stroke
  ..color = Color(0xFF739698)
  ..strokeWidth = 1;

Paint paint_15 = new Paint()
  ..style = PaintingStyle.stroke
  ..color = Color(0xFFCAFFF9)
  ..strokeWidth = 1.5;

Paint paint_16 = new Paint()
  ..style = PaintingStyle.stroke
  ..color = Color(0xFFCAFFF9)
  ..strokeWidth = 2;

Paint paint_17 = new Paint()
  ..style = PaintingStyle.stroke
  ..color = Color(0xFF739698)
  ..strokeWidth = 2;

Paint paint_18 = new Paint()
  ..style = PaintingStyle.stroke
  ..color = Color(0xFF83EBE0)
  ..strokeWidth = 2;

Paint paint_19 = new Paint()
  ..style = PaintingStyle.stroke
  ..color = Color(0xFFFFFFFF)
  ..strokeWidth = 1.8;

Paint paint_20 = new Paint()
  ..style = PaintingStyle.stroke
  ..color = Color(0xFF739698)
  ..strokeWidth = 1;

Offset offset = Offset(0, 0);

class SunnyNightPainter extends CustomPainter {
  double radians;

  Color bgColor = Color(0xFF061324);

  SunnyNightPainter(this.radians);

  @override
  void paint(Canvas canvas, Size size) {
    double width = size.width;
    double height = size.height;

    print(width.toString() + "  " + height.toString());

    canvas.translate(-350, -130);
    canvas.rotate(radians);

    canvas.drawColor(bgColor, BlendMode.color);

    canvas.drawCircle(offset, 400, paint_1);

    canvas.drawArc(
        Rect.fromCircle(center: offset, radius: 420), 0, 2, false, paint_2);

    canvas.drawArc(
        Rect.fromCircle(center: offset, radius: 440), 2, 4, false, paint_3);

    canvas.drawArc(
        Rect.fromCircle(center: offset, radius: 490), 3, 5, false, paint_4);

    canvas.drawArc(
        Rect.fromCircle(center: offset, radius: 540), 1, 3, false, paint_5);

    canvas.drawArc(
        Rect.fromCircle(center: offset, radius: 560), 0, 1, false, paint_6);

    canvas.drawArc(
        Rect.fromCircle(center: offset, radius: 586), 0.5, 2, false, paint_7);

    canvas.drawArc(
        Rect.fromCircle(center: offset, radius: 610), 0.8, 2, false, paint_8);

    canvas.drawArc(
        Rect.fromCircle(center: offset, radius: 633), 1.5, 2.5, false, paint_9);

    canvas.drawArc(
        Rect.fromCircle(center: offset, radius: 645), 1.8, 3, false, paint_10);

    canvas.drawArc(
        Rect.fromCircle(center: offset, radius: 660), 1.4, 4, false, paint_11);

    canvas.drawArc(Rect.fromCircle(center: offset, radius: 685), 3.2, 4.2,
        false, paint_12);

    canvas.drawArc(Rect.fromCircle(center: offset, radius: 715), 1.2, 5.2,
        false, paint_13);

    canvas.drawArc(Rect.fromCircle(center: offset, radius: 740), 3.2, 5.5,
        false, paint_14);

    canvas.drawArc(
        Rect.fromCircle(center: offset, radius: 755), 2.1, 3, false, paint_15);

    canvas.drawArc(
        Rect.fromCircle(center: offset, radius: 790), 2.1, 3, false, paint_16);

    canvas.drawArc(
        Rect.fromCircle(center: offset, radius: 830), 3, 5, false, paint_17);

    canvas.drawArc(
        Rect.fromCircle(center: offset, radius: 880), 3, 4.1, false, paint_18);

    canvas.drawArc(
        Rect.fromCircle(center: offset, radius: 940), 2, 5.5, false, paint_19);

    canvas.drawArc(
        Rect.fromCircle(center: offset, radius: 1045), 1, 5, false, paint_20);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
