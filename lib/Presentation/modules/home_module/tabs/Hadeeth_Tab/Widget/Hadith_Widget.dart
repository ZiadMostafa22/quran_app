import 'package:flutter/material.dart';
import 'package:islami/Presentation/modules/home_module/tabs/Hadeeth_Tab/HadeethTab.dart';

class HadithWidget extends StatelessWidget {
  Hadith hadith;

  HadithWidget({super.key, required this.hadith});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Text(
        hadith.title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
