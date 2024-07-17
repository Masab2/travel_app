import 'package:flutter/material.dart';
import 'package:travel_app/config/extenshion.dart';

class BookingFeildComp extends StatelessWidget {
  final String title;
  final String hintText;
  final IconData icon;
  final TextEditingController? controller;
  final VoidCallback? ontap;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  const BookingFeildComp(
      {super.key,
      required this.title,
      required this.hintText,
      required this.icon,
      this.controller, this.ontap, this.onChanged, this.validator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: context.mw * 0.03, vertical: context.mh * 0.02),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            height: context.mh * 0.06,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[200],
            ),
            child: TextFormField(
              controller: controller,
              onChanged: onChanged,
              validator: validator,
              decoration: InputDecoration(
                hintText: hintText,
                prefixIcon: InkWell(
                  onTap: ontap,
                  child: Icon(icon),
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
