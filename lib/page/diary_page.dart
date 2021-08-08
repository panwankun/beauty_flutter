import 'package:beauty_flutter/utils/themes_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DiaryPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DiaryPageWidgetState();
}

class _DiaryPageWidgetState extends State<DiaryPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.BACKGROUND,
      body: Center(child: Text('笔记本'),),
    );
  }
}
