import 'package:flutter/material.dart';
import 'package:site_flutter_web/pages/breakpoints.dart';

import '../course_item.dart';

class CoursesSection extends StatelessWidget {
  const CoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return GridView.builder(
        padding: EdgeInsets.symmetric(
            vertical: 16,
            horizontal: constraints.maxWidth >= tabletBreakPoint ? 0 : 16),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 20,
        itemBuilder: (context, index) {
          return const CourseItem();
        },
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
      );
    });
  }
}

