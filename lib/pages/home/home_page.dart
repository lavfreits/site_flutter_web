import 'package:flutter/material.dart';
import 'package:site_flutter_web/pages/home/widgets/app_bar/app_bar_mobile.dart';
import 'package:site_flutter_web/pages/home/widgets/app_bar/app_bar_web.dart';
import 'package:site_flutter_web/pages/home/widgets/sections/advantages_section.dart';
import 'package:site_flutter_web/pages/home/widgets/sections/courses_section.dart';
import 'package:site_flutter_web/pages/home/widgets/sections/top_section.dart';

import '../breakpoints.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: constraints.maxWidth > mobileBreakPoint
            ? const PreferredSize(
                preferredSize: Size(double.infinity, 72),
                child: WebAppBar(),
              )
            : const PreferredSize(
                preferredSize: Size(double.infinity, 50),
                child: MobileAppBar(),
              ),
        drawer: constraints.maxWidth > mobileBreakPoint
            ? null
            : const Drawer(
                surfaceTintColor: Colors.white,
              ),
        body: Align(
          alignment: Alignment.topCenter,
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 1400,
            ),
            child: ListView(
              children: const [
                TopSection(),
                AdvantagesSection(),
                CoursesSection()
              ],
            ),
          ),
        ),
      );
    });
  }
}
