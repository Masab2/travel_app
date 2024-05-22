import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/config/Color/AppColor.dart';

class LoadingWidget extends StatelessWidget {
  final double size;
  const LoadingWidget({super.key, this.size = 36.0});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: size,
        height: size,
        child: Platform.isIOS
            ? CupertinoActivityIndicator(
                color: AppColor.primaryColor,
              )
            : CircularProgressIndicator(
                strokeWidth: 2.0,
                color: AppColor.primaryColor,
              ),
      ),
    );
  }
}
