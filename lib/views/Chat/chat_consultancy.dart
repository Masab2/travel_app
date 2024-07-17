import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app/Bloc/ChatBloc/chat_bloc.dart';
import 'package:travel_app/Model/ChatAIModel/chat_ai_model.dart';
import 'package:travel_app/config/Color/AppColor.dart';
import 'package:travel_app/config/extenshion.dart';
import 'package:travel_app/config/utils.dart';
import 'package:travel_app/config/widgets/widgets.dart';
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
          child: BlocListener<ChatBloc, ChatState>(
            listener: (context, state) {
              if (state is ChatFailureState) {
                return Utils.displaySnackBarError(context, state.messages);
              }
            },
            child: BlocBuilder<ChatBloc, ChatState>(
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
                                  icon: Icon(Icons.send,
                                      color: AppColor.blackColor),
                                  onPressed: () {
                                    if (promprController.text.isNotEmpty) {
                                      context.read<ChatBloc>().add(
                                            ChatMessageEvent(
                                              message: promprController.text,
                                            ),
                                          );
                                      promprController.clear();
                                    }
                                    setState(() {});
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                } else {
                  return Container();
                }
              },
            ),
          )),
    );
  }
}
