import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:sweet_fruit_proj/bloc/foods_cubit.dart';
import 'package:sweet_fruit_proj/pages/onboarding_screen.dart';
import 'package:sweet_fruit_proj/state/food_readed_state.dart';
import 'package:sweet_fruit_proj/storages/isar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sweet_fruit_proj/ui_kit/app_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppIsarDatabase.init();
  runApp(
      BlocProvider(
  create: (context) => FoodsCubit(),
  child: ChangeNotifierProvider(
      create: (BuildContext context) => FoodReadedState(),
  child: MyApp()),
));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.background,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: FutureBuilder(
          future: context.read<FoodsCubit>().getArchiveFoods(),
          builder: (context, snapshot) {
            return FutureBuilder(
              future: context.read<FoodsCubit>().getStatFoods(),
              builder: (context, snapshot) {
                return OnboardingScreen();
              }
            );
          }
        ),
      ),
    );
  }
}


