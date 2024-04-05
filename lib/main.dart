import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/core/utils/api_service.dart';
import 'package:graduation/core/utils/app_router.dart';
import 'package:graduation/features/categories/data/repos/categoriesrepo_impl.dart';
import 'package:graduation/features/categories/presentation/manger/categories_cubit/categories_cubit_cubit.dart';

void main() {
  runApp(const Sawah());
}

class Sawah extends StatelessWidget {
  const Sawah({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              CategoriesCubitCubit(CategoriesRepoImpl(ApiService(Dio())))
                ..fetchCategories(),
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
            scaffoldBackgroundColor: kbackgroundcolor,
            textTheme: GoogleFonts.interTextTheme()),
      ),
    );
  }
}
