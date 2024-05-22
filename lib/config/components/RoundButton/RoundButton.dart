import 'package:flutter/material.dart';
import 'package:travel_app/config/Color/AppColor.dart';
import 'package:travel_app/config/extenshion.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final bool loading;
  final VoidCallback onPress;
  const RoundButton({
    super.key,
    required this.title,
    this.loading = false,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: context.mh * 0.07,
        width: context.mw * 0.8,
        decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: loading
              ? const CircularProgressIndicator(
                )
              : Text(
                  title,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: AppColor.secondaryColorWhite,
                      ),
                ),
        ),
      ),
    );
  }
}
