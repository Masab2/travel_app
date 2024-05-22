import 'package:flutter/material.dart';
import 'package:travel_app/config/extenshion.dart';

class CustomizedFeilds extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyBoardtype;
  final IconData icon;
  final bool? obscuretext;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final String? Function(String)? onFeildSubmitted;
  final String? Function(String)? onChanged;
  const CustomizedFeilds({
    super.key,
    required this.controller,
    required this.hintText,
    this.keyBoardtype,
    required this.icon,
    this.obscuretext = false,
    this.suffixIcon,
    this.validator,
    this.onFeildSubmitted,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: context.mw * 0.03),
      margin: EdgeInsets.symmetric(horizontal: context.mw * 0.03),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.grey[200],
      ),
      child: TextFormField(
        obscureText: obscuretext ?? false,
        controller: controller,
        keyboardType: keyBoardtype,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          icon: Icon(icon),
          suffixIcon: suffixIcon,
        ),
        validator: validator,
        onFieldSubmitted: onFeildSubmitted,
        onChanged: onChanged,
      ),
    );
  }
}
