import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconButton extends StatelessWidget {
  final String iconPath;
  final press;
  const CustomIconButton({Key? key,
  required this.iconPath,
  required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      elevation: 7,
      child: InkWell(
        onTap: press,
        child: Container(
          width: 40,
          height: 40,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(50),

          ),
          child: SvgPicture.asset(
                  iconPath,fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
