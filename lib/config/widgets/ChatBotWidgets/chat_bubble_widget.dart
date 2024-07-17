import 'package:flutter/material.dart';
import 'package:travel_app/config/Color/AppColor.dart';
import 'package:travel_app/config/extenshion.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final String isSent;
  final String time;
  const ChatBubble(
      {super.key,
      required this.text,
      required this.isSent,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment:
          isSent == 'user' ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(bottom: context.mh * 0.02, left: 10, right: 10),
        padding: EdgeInsets.symmetric(
            horizontal: context.mw * 0.04, vertical: context.mh * 0.02),
        decoration: BoxDecoration(
          color:
              isSent == 'user' ? AppColor.primaryColor : AppColor.greyTextColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(text, style: Theme.of(context).textTheme.bodySmall),
            0.01.ph(context),
            Text(
              time,
              style:
                  Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}
