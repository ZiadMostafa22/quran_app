import 'package:flutter/material.dart';

import '../../../../../../core/colors_manager.dart';
import '../../../../../../core/strings_manager.dart';

class Quraanheaderwidget extends StatelessWidget {
  const Quraanheaderwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(
        width: 3,
        color: Theme.of(context).dividerColor,
      ))),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: Text(
                StringsManager.VersesNumber,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Container(
              width: 3,
              color: ColorManager.goldColor,
            ),
            Expanded(
              child: Text(
                StringsManager.ChapterName,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            )
          ],
        ),
      ),
    );
  }
}
