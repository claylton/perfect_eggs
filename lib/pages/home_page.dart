import 'package:flutter/material.dart';
import 'package:perfect_eggs/widgets/type_buttons_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 60),
          TypeButtonsWidget(),
        ],
      ),
    );
  }
}
