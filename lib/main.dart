import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jokee_single_serving/app/util/dependency.dart';
import 'package:jokee_single_serving/domain/usecases/generate_data_usecase.dart';
import 'package:jokee_single_serving/presentation/home/view/home_page.dart';

void main() {
  DependencyCreator().init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final generateDataUseCase = Get.find<GenerateDataUseCase>();
  @override
  void initState() {
    generateDataUseCase.initData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}
