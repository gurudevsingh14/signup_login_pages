import 'package:flutter/material.dart';

class RoundInputButton extends StatefulWidget {
  final Icon icon;
  final String hintText;
  bool? obscureText;

  RoundInputButton({Key? key,
    required this.icon,
    required this.hintText,
    this.obscureText}) : super(key: key);

  @override
  State<RoundInputButton> createState() => _RoundInputButtonState();
}
class _RoundInputButtonState extends State<RoundInputButton> {


  bool pressed=true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Container(
        width: size.width*0.7,
        color: Color(0xFFF1E6FF),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          obscureText: pressed,
          decoration: InputDecoration(

            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: widget.hintText,
            icon: widget.icon,
            suffixIcon: widget.obscureText!=null?
                widget.obscureText!?
            IconButton(
              padding: const EdgeInsets.only(left:4,right:4,top:0),
              icon: Container(
              child: pressed  ?
              Icon(Icons.visibility):Icon(Icons.visibility_off)
              ),
              onPressed: () {
              setState(() {
              pressed = !pressed;
              });
            }
          ):null:null,
        ),
      )
      ),
    );
  }
}
