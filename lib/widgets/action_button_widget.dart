import 'package:flutter/material.dart';
import 'package:perfect_eggs/blocs/app_bloc.dart';
import 'package:perfect_eggs/widgets/button_widget.dart';
import 'package:provider/provider.dart';

class ActionButtonWidget extends StatelessWidget {
  const ActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final AppBloc bloc = Provider.of<AppBloc>(context);

    switch (bloc.state) {
      case "stopped":
        return ButtonWidget(
          label: "START",
          selected: true,
          onPressed: bloc.start,
        );
      case "cooking":
        return ButtonWidget(
          label: "STOP",
          selected: true,
          onPressed: bloc.stop,
        );
      case "done":
        return ButtonWidget(
          label: "ALL DONE",
          selected: true,
          onPressed: bloc.reset,
        );
      default:
        return ButtonWidget(
          label: "START",
          selected: true,
          onPressed: bloc.start,
        );
    }
  }
}
