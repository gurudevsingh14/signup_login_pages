import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              left: 0,
              top: 0,
              width:120,
              child: Image.asset('assets/images/main_top.png')
          ),
          Positioned(
              bottom: 0,
              left: 0,
              width: 70,
              child:
              Image.asset('assets/images/main_bottom.png'))
          ,
          child
        ],
      ),
    );
  }
}
