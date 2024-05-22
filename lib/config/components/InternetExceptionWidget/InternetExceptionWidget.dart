import 'package:flutter/material.dart';
import 'package:travel_app/config/extenshion.dart';

class InterNetExceptionWidget extends StatefulWidget {
  final VoidCallback onPress;
  const InterNetExceptionWidget({super.key, required this.onPress});

  @override
  State<InterNetExceptionWidget> createState() =>
      _InterNetExceptionWidgetState();
}

class _InterNetExceptionWidgetState extends State<InterNetExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          0.15.ph(context),
          const Icon(
            Icons.cloud_off,
            color: Colors.red,
            size: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                'We’re unable to show results.\nPlease check your data\nconnection.',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontSize: 20),
              ),
            ),
          ),
          0.15.ph(context),
          ElevatedButton(
            onPressed: widget.onPress,
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
