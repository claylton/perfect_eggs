import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String label;
  final bool selected;
  final void Function()? onPressed;

  const ButtonWidget({
    super.key,
    required this.label,
    required this.onPressed,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 110,
      decoration: BoxDecoration(
        color: selected ? Theme.of(context).primaryColor : Colors.transparent,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          width: 1,
          color: Theme.of(context).primaryColor,
        ),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
