import 'package:flutter/material.dart';

void main()
{
  runApp( Water_Ripple_Effect_Animation() );
}

class Water_Ripple_Effect_Animation extends StatelessWidget
{
  @override
  Widget build(BuildContext buildContext)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Water Ripple Effect Animation",
      color: Colors.white,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: WaterRippleEffectAnimation(),
    );
  }
}

class WaterRippleEffectAnimation extends StatefulWidget
{
  @override
  State<WaterRippleEffectAnimation> createState()
  {
    return WaterRippleEffectAnimationState();
  }
}

class WaterRippleEffectAnimationState extends State<WaterRippleEffectAnimation> with SingleTickerProviderStateMixin
{
  late AnimationController animationController;
  late Animation animation;
  var circleRadiusList = [ 20.0, 40.0, 60.0, 80.0, 100.0, 120.0, 140.0, 160.0, 180.0, 200.0, 220.0, 240.0, 260.0, 280.0, 300.0, 320.0, 340.0, 360.0, 380.0, 400.0, 420.0, 440.0, 460.0, 480.0, 500.0, ];

  @override
  void initState()
  {
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(seconds: 6));
    //animation = Tween(begin: 0.0, end: 1.0).animate( animationController );
    animationController.addListener(() {
      setState((){});
    });
    animationController.forward();
  }

  @override
  Widget build(BuildContext buildContext)
  {
    return Scaffold(
      primary: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        primary: true,
        title: Text("Water Ripple Effect Animation", style: TextStyle( fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white ),),
        titleSpacing: 8,
        centerTitle: true,
        elevation: 8,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            customContainer(circleRadiusList[0]),
            customContainer(circleRadiusList[1]),
            customContainer(circleRadiusList[2]),
            customContainer(circleRadiusList[3]),
            customContainer(circleRadiusList[4]),
            customContainer(circleRadiusList[5]),
            customContainer(circleRadiusList[6]),
            customContainer(circleRadiusList[7]),
            customContainer(circleRadiusList[8]),
            customContainer(circleRadiusList[9]),
            customContainer(circleRadiusList[10]),
            customContainer(circleRadiusList[11]),
            customContainer(circleRadiusList[12]),
            customContainer(circleRadiusList[13]),
            customContainer(circleRadiusList[14]),
            customContainer(circleRadiusList[15]),
            customContainer(circleRadiusList[16]),
            customContainer(circleRadiusList[17]),
            customContainer(circleRadiusList[18]),
            customContainer(circleRadiusList[19]),
            customContainer(circleRadiusList[20]),
            customContainer(circleRadiusList[21]),
            customContainer(circleRadiusList[22]),
            customContainer(circleRadiusList[23]),
            customContainer(circleRadiusList[24]),
          ],
        ),
      ),
    );
  }

  Widget customContainer(radius)
  {
    return Container(
      width: radius * animationController.value,
      height: radius * animationController.value,
      color: Colors.indigo.withOpacity(1-animationController.value),
    );
  }
}