import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app/Bloc/ChatBloc/chat_bloc.dart';
import 'package:travel_app/Model/ChatAIModel/chat_ai_model.dart';
import 'package:travel_app/config/Color/AppColor.dart';
import 'package:travel_app/config/extenshion.dart';
import 'package:travel_app/config/widgets/TextFormFeilds/customizedFeilds.dart';
import 'package:travel_app/main.dart';

class ChatConsultancyView extends StatefulWidget {
  const ChatConsultancyView({super.key});

  @override
  State<ChatConsultancyView> createState() => _ChatConsultancyViewState();
}

class _ChatConsultancyViewState extends State<ChatConsultancyView> {
  final promprController = TextEditingController();
  final ChatBloc _chatBloc = ChatBloc(chatAIRepo: getIt());

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
          'Travel Bot',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (context) => _chatBloc,
        child: BlocConsumer<ChatBloc, ChatState>(
          listener: (context, state) {
            if (state is ChatFailureState) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Error: ${state.messages}')),
              );
            }
          },
          builder: (context, state) {
            if (state is ChatSuccessState) {
              final List<ChatAiModel> messages = state.messages;
              return Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: messages.length,
                      itemBuilder: (context, index) {
                        final message = messages[index];
                        log(message.toString());
                        return ChatBubble(
                          isSent: message.role ?? "",
                          text: message.parts!.first.text,
                          time: '12:00 AM',
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(context.mw * 0.02),
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomizedFeilds(
                            controller: promprController,
                            hintText: 'Write a message',
                            icon: IconlyBold.chat,
                          ),
                        ),
                        0.02.pw(context),
                        CircleAvatar(
                          backgroundColor: AppColor.primaryColor,
                          radius: 25,
                          child: Center(
                            child: IconButton(
                              icon: Icon(Icons.send, color: AppColor.blackColor),
                              onPressed: () {
                                if (promprController.text.isNotEmpty) {
                                  context.read<ChatBloc>().add(
                                    ChatMessageEvent(message: promprController.text),
                                  );
                                  promprController.clear();
                                }
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            } else if (state is ChatFailureState) {
              log(state.messages);
              return Center(child: Text('Failed to load messages: ${state.messages}'));
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String text;
  final String isSent;
  final String time;
  const ChatBubble(
      {super.key, required this.text, required this.isSent, required this.time});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSent == 'user' ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(bottom: context.mh * 0.02, left: 10, right: 10),
        padding: EdgeInsets.symmetric(
            horizontal: context.mw * 0.04, vertical: context.mh * 0.02),
        decoration: BoxDecoration(
          color: isSent == 'user' ? AppColor.primaryColor : AppColor.greyTextColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(text, style: Theme.of(context).textTheme.bodySmall),
            0.01.ph(context),
            Text(
              time,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}
