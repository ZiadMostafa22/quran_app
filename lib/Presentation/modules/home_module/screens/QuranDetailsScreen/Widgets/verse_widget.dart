import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
  VerseWidget({super.key, required this.verse});

  String verse;

//TODO i
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Text(
          verse,
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
