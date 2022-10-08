import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Demo extends StatefulWidget {
  const Demo(
      {Key? key,
      required this.offScreen,
      required this.onScreen,
      required this.onNavigate,
      required this.username,
      required this.password})
      : super(key: key);

  final VoidCallback onScreen;
  final VoidCallback offScreen;
  final VoidCallback onNavigate;
  final String username;
  final String password;

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  double width = 300;
  double height = 60;
  double radius = 20;
  double btnOpacity = 1.0;
  double loaderOpacity = 0.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        AnimatedOpacity(
          duration: Duration(milliseconds: 300),
          opacity: btnOpacity,
          child: Material(
            color: Colors.pink,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () async {
                widget.offScreen();
                await hideBtn();
                widget.onScreen();
              },
              overlayColor: MaterialStateProperty.all(Colors.amber),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                curve: Curves.linear,
                width: width,
                height: height,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(radius)),
                child: Center(
                  child: Text(
                    "LOGIN",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
        ),
        AnimatedOpacity(
          duration: Duration(milliseconds: 300),
          opacity: loaderOpacity,
          child: LoadingAnimationWidget.hexagonDots(
            size: 40,
            color: Colors.pink,
          ),
        ),
      ],
    );
  }

  Future<void> hideBtn() async {
    setState(() {
      width = 0.0;
      //height = 20;
      radius = 50;
      btnOpacity = 0.0;
      loaderOpacity = 1.0;
    });

    await Future.delayed(Duration(seconds: 5));

    if (widget.username == "admin@gmail.com" &&
        widget.password == "Admin@123") {
      widget.onNavigate();
    } else {
      await ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Invalid Login")))
          .closed;
    }

    setState(() {
      width = 300;
      //height = 60;
      radius = 20;
      btnOpacity = 1.0;
      loaderOpacity = 0.0;
    });
  }
}
