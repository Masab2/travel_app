import 'package:travel_app/config/Assets/imageAsset.dart';

class OnBoardModel {
  final String image;
  final String title;
  final String description;
  final String btntext;

  OnBoardModel({
    required this.image,
    required this.title,
    required this.description,
    required this.btntext,
  });
  static List<OnBoardModel> model = [
    OnBoardModel(
      image: ImageAsset.on1,
      title: "Life is brief, but the universe is vast .",
      description:
          "At Tourista Adventures, we curate unique and immersive travel experiences to destinations around the globe.",
      btntext: "Get Started",
    ),
    OnBoardModel(
      image: ImageAsset.on2,
      title: "The world is waiting for you, go discover it.",
      description:
          "Embark on an unforgettable journey by venturing outside of your comfort zone. The world is full of hidden gems just waiting to be discovered.",
      btntext: "Next",
    ),
    OnBoardModel(
      image: ImageAsset.on3,
      title: "People don’t take trips, trips take people",
      description:
          "To get the best of your adventure you just need to leave and go where you like. we are waiting for you",
      btntext: "Get Started",
    )
  ];
}
