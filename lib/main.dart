import 'package:flutter/material.dart';

main()
{
  runApp(Water_Ripple_Effect_App());
}

class Water_Ripple_Effect_App extends StatelessWidget
{
  @override
  Widget build(BuildContext buildContext)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.indigo,
      title: "Water Ripple Effect App",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Water_Ripple_Effect(),
    );
  }
}

class Water_Ripple_Effect extends StatefulWidget
{
  @override
  State<Water_Ripple_Effect> createState()
  {
    return Water_Ripple_Effect_State();
  }
}

class Water_Ripple_Effect_State extends State<Water_Ripple_Effect> with SingleTickerProviderStateMixin
{
  
  late AnimationController _animationController;
  late Animation _animation;
  var circle_Radius_List = [ 20.0, 40.0, 60.0, 80.0, 100.0, 120.0, 140.0, 160.0, 180.0, 200.0, 220.0, 240.0, 260.0, 280.0, 300.0, 320.0, 340.0, 360.0, 380.0, 400.0, 420.0, 440.0, 460.0, 480.0, 500.0, ];

  @override
  void initState()
  {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: Duration( seconds: 5 ));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);

    _animationController.addListener(() {
      setState(() {

      });
    });
    _animationController.forward();
  }

  @override
  Widget build(BuildContext buildContext)
  {
    return Scaffold(
      primary: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        primary: true,
        title: Text("Water Ripple Effect", style: TextStyle( fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white ),),
        centerTitle: true,
        elevation: 7,
        titleSpacing: 7,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: circle_Radius_List.map((radius) => Container(
            width: radius * _animation.value,
            height: radius * _animation.value,
            decoration: BoxDecoration(
              color: Colors.deepPurple.withOpacity(1-_animationController.value),
              shape: BoxShape.circle,
            ),
          ) ).toList(),
        ),
      ),
    );
  }
}