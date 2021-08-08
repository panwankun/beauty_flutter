import 'package:beauty_flutter/bean/tab_item.dart';
import 'package:beauty_flutter/page/watch_page.dart';
import 'package:beauty_flutter/page/weather_page.dart';
import 'package:beauty_flutter/utils/themes_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'calculator_list_page.dart';
import 'diary_page.dart';

class HomePageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.WHITE,
      body: DefaultTabController(
        length: 4,
        initialIndex: 0,
        child: Stack(
          children: <Widget>[
            TabBarView(
              children: [
                WatchPageWidget(),
                WeatherPageWidget(),
                CalculatorPageWidget(),
                DiaryPageWidget(),
              ],
            ),
            Column(
              children: <Widget>[
                Expanded(child: Container()),
                Container(
                  padding: EdgeInsets.only(
                    top: 5,
                    bottom: 5,
                  ),
                  color: ColorUtils.WHITE_FA,
                  child: _buildBottomIndicatorWidget(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBottomIndicatorWidget() {
    return TabBar(
      indicator: null,
      indicatorColor: ColorUtils.WHITE_FA,
      labelColor: ColorUtils.THEME,
      unselectedLabelColor: ColorUtils.GREY_9E9,
      tabs: [
        _buildTabItem(TabItem(Icons.timer, "时钟")),
        _buildTabItem(TabItem(Icons.wb_cloudy, "天气")),
        _buildTabItem(TabItem(Icons.all_inclusive, "换算")),
        _buildTabItem(TabItem(Icons.bookmark, "日记")),
      ],
    );
  }

  Widget _buildTabItem(TabItem item) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          item.icon,
          size: 28,
        ),
        Text(
          item.title,
          style: TextStyle(fontSize: 10),
        ),
      ],
    );
  }
}
