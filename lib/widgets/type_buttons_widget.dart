import 'package:flutter/material.dart';
import 'package:perfect_eggs/blocs/app_bloc.dart';
import 'package:perfect_eggs/widgets/button_widget.dart';
import 'package:provider/provider.dart';

class TypeButtonsWidget extends StatelessWidget {
  const TypeButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final AppBloc bloc = Provider.of<AppBloc>(context);
    return bloc.state == "stopped" ? buttons(bloc) : const SizedBox();
  }

  Widget buttons(AppBloc bloc) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ButtonWidget(
          label: "Soft",
          selected: bloc.selected == "soft",
          onPressed: () => bloc.select("soft"),
        ),
        ButtonWidget(
          label: "Medium",
          selected: bloc.selected == "medium",
          onPressed: () => bloc.select("medium"),
        ),
        ButtonWidget(
          label: "Hard",
          selected: bloc.selected == "hard",
          onPressed: () => bloc.select("hard"),
        ),
      ],
    );
  }
}
