import 'package:flutter/material.dart';
import 'package:graduation/features/categories/data/model/categories_model.dart';
import 'package:graduation/features/categories/presentation/views/widgets/appbar.dart';
import 'package:graduation/features/categories/presentation/views/widgets/arrow.dart';
import 'package:graduation/features/categories/presentation/views/widgets/cat_grid.dart';
import 'package:graduation/features/categories/presentation/views/widgets/navigationpar.dart';

class CategoriesViewBody extends StatelessWidget {
  const CategoriesViewBody({Key? key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          arrow(
            onTap: () {},
          ),
          CategoriesGrid(),           
         
        ],
      ),
      bottomNavigationBar: navgbar(),
    );
  }
}
