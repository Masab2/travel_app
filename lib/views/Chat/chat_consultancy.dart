import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app/config/Color/AppColor.dart';
import 'package:travel_app/config/extenshion.dart';
import 'package:travel_app/config/widgets/TextFormFeilds/customizedFeilds.dart';

class ChatConsultancyView extends StatefulWidget {
  const ChatConsultancyView({super.key});

  @override
  State<ChatConsultancyView> createState() => _ChatConsultancyViewState();
}

class _ChatConsultancyViewState extends State<ChatConsultancyView> {
  final promprController = TextEditingController();
  @override
  void dispose() {
    promprController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Help Center',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(context.mw * 0.02),
              children: const [
                ChatBubble(
                  text: 'Hello! How are you?',
                  isSent: false,
                  time: '10:30 AM',
                ),
                ChatBubble(
                  text: 'I\'m good, thanks! How about you?',
                  isSent: true,
                  time: '10:31 AM',
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(context.mw * 0.02),
            child: Row(
              children: [
                Expanded(
                  child: CustomizedFeilds(controller: promprController, hintText: 'Write a message', icon: IconlyBold.chat),
                ),
                0.02.pw(context),
                CircleAvatar(
                  backgroundColor: AppColor.primaryColor,
                  radius: 25,
                  child: Center(
                    child: IconButton(
                      icon: Icon(Icons.send, color: AppColor.blackColor),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSent;
  final String time;
  const ChatBubble(
      {super.key,
      required this.text,
      required this.isSent,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSent ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(bottom: context.mh * 0.02),
        padding: EdgeInsets.symmetric(
            horizontal: context.mw * 0.04, vertical: context.mh * 0.02),
        decoration: BoxDecoration(
          color: isSent ? AppColor.primaryColor : AppColor.greyTextColor,
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
