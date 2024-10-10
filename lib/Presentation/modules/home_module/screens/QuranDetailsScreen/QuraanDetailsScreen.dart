import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Presentation/modules/home_module/screens/QuranDetailsScreen/Widgets/verse_widget.dart';
import 'package:islami/Presentation/modules/home_module/tabs/Quraan_Tab/QuraanTab.dart';
import 'package:islami/core/assets_manager.dart';

class Quraandetailsscreen extends StatefulWidget {
  Quraandetailsscreen({super.key});

  @override
  State<Quraandetailsscreen> createState() => _QuraandetailsscreenState();
}

class _QuraandetailsscreenState extends State<Quraandetailsscreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraItem suraItem = ModalRoute.of(context)?.settings.arguments as SuraItem;
    if (verses.isEmpty) readQuranFile(suraItem.index + 1);
    return Stack(
      children: [
        Image.asset(
          AssetsManager.mainBgLight,
          fit: BoxFit.fill,
          height: double.infinity,
          width: double.infinity,
        ),
        Scaffold(
          body: verses.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemBuilder: (context, index) =>
                      VerseWidget(verse: verses[index]),
                  itemCount: verses.length,
                ),
          appBar: AppBar(
            title: Text(suraItem.suraName),
          ),
        ),
      ],
    );
  }

  void readQuranFile(int index) async {
    String fileContent = await rootBundle.loadString('assets/files/$index.txt');
    setState(() {
      verses = fileContent
          .trim().split('\n');
    });
  }
}
