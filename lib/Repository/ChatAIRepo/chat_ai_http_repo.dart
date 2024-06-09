import 'dart:developer';

import 'package:travel_app/Model/ChatAIModel/chat_ai_model.dart';
import 'package:travel_app/Repository/ChatAIRepo/chat_ai_repo.dart';
import 'package:travel_app/config/AppUrl/AppUrl.dart';
import 'package:travel_app/data/Network/NetworkApiServices.dart';

class ChatAIHttpRepo implements ChatAIRepo {
  final _api = NetworkApiService();
  @override
  Future<ChatAiModel> chatAIApi(data, List<ChatAiModel> previousMessage) async {
    Map<String, dynamic> data = {
      "contents": previousMessage.map((e) => e.toJson()).toList(),
      "generationConfig": {
        "temperature": 1,
        "maxOutputTokens": 1000,
      }
    };
    var response = await _api.getPostApiResponse(AppUrl.chatUrl, data);
    ChatAiModel model = ChatAiModel.fromJson(response);
    log(model.parts?.first.text ?? "");
    return model;
  }
}
