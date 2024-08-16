import 'package:flutter/material.dart';
import 'package:perfect_eggs/widgets/button_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const SizedBox(height: 60),
          ButtonWidget(
            label: 'teste',
            selected: true,
            onPressed: (){},
          ),
          const SizedBox(height: 10),
          ButtonWidget(
            label: 'teste',
            selected: false,
            onPressed: (){},
          ),

        ],
      ),
    );
  }
}
