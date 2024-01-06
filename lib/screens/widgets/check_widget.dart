// ignore_for_file: prefer_const_constructors

import 'package:clon_whastapp/models/chatItem.dart';
import 'package:flutter/material.dart';

class CheckWidget extends StatelessWidget {
  final CheckStatus checkStatus;
  const CheckWidget(this.checkStatus, {super.key})
      : assert(checkStatus != null);
  @override
  Widget build(BuildContext context) {
    switch (checkStatus) {
      case CheckStatus.unckeck:
        return Container();
        break;
      case CheckStatus.check:
        return Icon(
          Icons.check,
          size: 10.0,
        );
        break;
      case CheckStatus.doublegreencheck:
        return Icon(
          Icons.done_all,
          color: Colors.blue,
          size: 10.0,
        );
        break;
      case CheckStatus.doublecheck:
        return Icon(
          Icons.done_all,
          size: 10.0,
        );
        break;
      default:
        return Container();
    }
  }
}
