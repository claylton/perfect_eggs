import 'package:flutter/material.dart';
import 'package:perfect_eggs/widgets/action_button_widget.dart';
import 'package:perfect_eggs/widgets/eggs_widget.dart';
import 'package:perfect_eggs/widgets/progress_widget.dart';
import 'package:perfect_eggs/widgets/type_buttons_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: const [
            SizedBox(height: 50),
            Text(
              "Perfect Eggs",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            EggsWidget(),
            Padding(
              padding: EdgeInsets.all(10),
              child: TypeButtonsWidget(),
            ),
            ProgressWidget(),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.all(20),
              child: ActionButtonWidget(),
            )
          ],
        ));
  }
}
