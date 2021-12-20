import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perpus_jateng_app/helper/binding.dart';
import 'package:perpus_jateng_app/helper/color_palette.dart';
import 'package:perpus_jateng_app/view/control_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Binding(),
      defaultTransition: Transition.fade,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: ColorPalette.materialWhiteColor),
      home: const ControlView(),
      title: "Perpusda Jateng",
    );
  }
}
