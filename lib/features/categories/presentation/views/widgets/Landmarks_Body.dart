import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/features/categories/presentation/views/widgets/appbar.dart';
import 'package:graduation/features/categories/presentation/views/widgets/arrow.dart';
import 'package:graduation/features/categories/presentation/views/widgets/cat_grid.dart';
import 'package:graduation/features/categories/presentation/views/widgets/landmark_grid.dart';
import 'package:graduation/features/categories/presentation/views/widgets/navigationpar.dart';

// ignore: must_be_immutable
class LandmarksBody extends StatelessWidget {
  LandmarksBody({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          arrow(onTap: () => GoRouter.of(context).pop('/')),
          landmarkGrid(),
        ],
      ),
      bottomNavigationBar: navgbar(),
    );
  }
}
