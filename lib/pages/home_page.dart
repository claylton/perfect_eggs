import 'package:flutter/material.dart';
import 'package:perfect_eggs/blocs/app_bloc.dart';
import 'package:perfect_eggs/widgets/action_button_widget.dart';
import 'package:perfect_eggs/widgets/eggs_widget.dart';
import 'package:perfect_eggs/widgets/progress_widget.dart';
import 'package:perfect_eggs/widgets/type_buttons_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppBloc bloc = Provider.of<AppBloc>(context);
    return Scaffold(
      body: Column(
        children: <Widget>[
          const SizedBox(height: 60),
          Text(bloc.selected),
          Text(bloc.state),
          Text(bloc.time.toString()),
          Text(bloc.seconds.toString()),
          const TypeButtonsWidget(),
          const SizedBox(height: 10),
          const ActionButtonWidget(),
          const SizedBox(height: 10),
          const ProgressWidget(),
          const SizedBox(height: 10),
          const EggsWidget(),
        ],
      ),
    );
  }
}
