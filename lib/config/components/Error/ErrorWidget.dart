import 'package:flutter/material.dart';
import 'package:travel_app/config/extenshion.dart';

class ErrorWidgetComp extends StatelessWidget {
  final VoidCallback onPress;
  final String errorText;
  const ErrorWidgetComp({super.key, required this.onPress, required this.errorText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          0.020.ph(context),
          const Icon(
            Icons.error,
            color: Colors.red,
            size: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                errorText,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontSize: context.mh * 0.018),
              ),
            ),
          ),
          0.015.ph(context),
          ElevatedButton(
            onPressed: onPress,
            child: Center(
              child: Text(
                'RETRY',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          )
        ],
      ),
    );
  }
}