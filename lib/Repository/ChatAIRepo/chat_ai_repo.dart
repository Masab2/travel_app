import 'package:travel_app/Model/ChatAIModel/chat_ai_model.dart';

abstract class ChatAIRepo {
  Future<ChatAiModel> chatAIApi(dynamic data, List<ChatAiModel> previousMessage);
}
