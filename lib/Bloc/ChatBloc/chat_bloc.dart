import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:travel_app/Model/ChatAIModel/chat_ai_model.dart';
import 'package:travel_app/Repository/ChatAIRepo/chat_ai_repo.dart';

part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatAIRepo chatAIRepo;
  ChatBloc({required this.chatAIRepo})
      : super(ChatSuccessState(messages: const [])) {
    on<ChatMessageEvent>(_onChatMessageEvent);
  }

  void _onChatMessageEvent(
      ChatMessageEvent event, Emitter<ChatState> emit) async {
    final currentState = state as ChatSuccessState;
    final updatedMessages = List<ChatAiModel>.from(currentState.messages)
      ..add(ChatAiModel(
        role: 'user',
        parts: [
          ChatPart(text: event.message),
        ],
      ));
    emit(ChatSuccessState(messages: updatedMessages));
    try {
      log("User message added: ${updatedMessages.toString()}");
      final aiResponse = await chatAIRepo.chatAIApi(updatedMessages);
      log("AI response received: ${aiResponse.toString()}");
      updatedMessages.add(aiResponse);
      emit(ChatSuccessState(messages: updatedMessages));
      log("State updated with AI response");
    } catch (e) {
      emit(ChatFailureState(messages: e.toString()));
      log("Error: ${e.toString()}");
    }
  }
}
