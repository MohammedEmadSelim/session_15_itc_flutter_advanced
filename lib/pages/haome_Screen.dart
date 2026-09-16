import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:session_15_itc_flutter_advanced/controllers/user_info_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Consumer<UserInfoController>(
        builder: (context, value, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Home Screen"), Text("Name${value.userName}")],
          );
        },
      ),
    );
  }
}
