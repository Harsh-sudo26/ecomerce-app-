import 'package:ecommerce/widgets/filter/filter.dart';
import 'package:ecommerce/widgets/hotdeals/hot_deals.dart';
import 'package:ecommerce/widgets/hotdeals/hotdealsgrid.dart';
import 'package:ecommerce/widgets/search/search_bar.dart';
import 'package:ecommerce/widgets/trendy/trendy_deals.dart';
import 'package:ecommerce/widgets/trendy/trendy_dealsgrid.dart';
import 'package:ecommerce/widgets/weekly/weekly_deals.dart';
import 'package:ecommerce/widgets/weekly/weekly_dealsgrid.dart';

import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                searchhome(), //custom search widget
                SizedBox(height: 15),
                Filter(),
                HotDeals(),
                Hotdealsgrid(),
                SizedBox(height: 10),
                WeeklyDeals(),
                WeeklyDealsgrid(),
                SizedBox(height: 15),
                TrendyDeals(),
                TrendyDealsgrid(),
                SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
