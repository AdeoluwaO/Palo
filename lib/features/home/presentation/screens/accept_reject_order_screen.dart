import 'package:dispatchapp/shared/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';


class AcceptRejectScreen extends StatelessWidget {
  const AcceptRejectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      showBackButton: true,
      titleText: 'My Stats',
      body: ListView(),
    );
  }
}