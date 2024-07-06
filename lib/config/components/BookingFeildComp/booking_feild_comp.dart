import 'package:flutter/material.dart';
import 'package:travel_app/config/extenshion.dart';

class BookingFeildComp extends StatelessWidget {
  final String title;
  final String hintText;
  final IconData icon;
  const BookingFeildComp({super.key, required this.title, required this.hintText, required this.icon});

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
            height: 50,
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[200],
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: hintText,
                prefixIcon: Icon(icon),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
