import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Presentation/modules/home_module/tabs/Hadeeth_Tab/Widget/Hadith_Widget.dart';
import 'package:islami/Presentation/modules/home_module/tabs/Hadeeth_Tab/Widget/Hadith_header.dart';
import 'package:islami/core/assets_manager.dart';

class HadeethTabScreen extends StatefulWidget {
  const HadeethTabScreen({super.key});

  @override
  State<HadeethTabScreen> createState() => _HadeethTabScreenState();
}

class _HadeethTabScreenState extends State<HadeethTabScreen> {
  List<Hadith> hadithList = [];

  @override
  Widget build(BuildContext context) {
    if (hadithList.isEmpty) readHadithFile();

    return Container(
      child: Column(
        children: [
          Image.asset(AssetsManager.hadeethLogo),
          HadithHeader(),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                color: Theme.of(context).dividerColor,
              ),
              itemBuilder: (context, index) => hadithList.isEmpty
                  ? Center(child: CircularProgressIndicator())
                  : HadithWidget(hadith: hadithList[index]),
              itemCount: hadithList.length,
            ),
          )
        ],
      ),
    );
  }

  void readHadithFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> HadithList = fileContent.trim().split('#');
    for (String HadithItem in HadithList) {
      List<String> HadithLines = HadithItem.trim().split('\n');
      String title = HadithLines[0];
      HadithLines.removeAt(0);
      String content = HadithLines.join('\n');
      Hadith hadith = Hadith(content: content, title: title);
      hadithList.add(hadith);
    }
    setState(() {});
  }
}

class Hadith {
  String title;
  String content;

  Hadith({required this.content, required this.title});
}
