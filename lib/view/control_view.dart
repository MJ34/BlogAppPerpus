import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:perpus_jateng_app/controller/controller.dart';
import 'package:perpus_jateng_app/helper/theme.dart';
import 'package:perpus_jateng_app/view/pages/pages.dart';

class ControlView extends StatelessWidget {
  const ControlView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx((){
      return Get.find<NetworkController>().connectionStatus.value == 1
          || Get.find<NetworkController>().connectionStatus.value == 2
          ? GetBuilder<PageViewController>(
        init: PageViewController(),
          builder: (controller) => Scaffold(
        body: controller.currentScreen,
            bottomNavigationBar: const CustomBottomNavigationBar(),
          ))
          : const NoConnectionPage();
    });
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: GetBuilder<PageViewController>(builder: (controller)=> BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: controller.navigationIndex,
        selectedItemColor: ThemeColor.blueColor,
        unselectedItemColor: ThemeColor.purpleColor,
        onTap: (index) {
          controller.changeCurrentScreen(index);
        },

        items: const [
          BottomNavigationBarItem(
            label: 'Home',
              icon: FaIcon(FontAwesomeIcons.home)),
          BottomNavigationBarItem(
            label: 'Category',
              icon: FaIcon(FontAwesomeIcons.listAlt)),
          BottomNavigationBarItem(
            label: 'Video',
              icon: FaIcon(FontAwesomeIcons.playCircle)),
          BottomNavigationBarItem(
            label: 'Setting',
              icon: FaIcon(FontAwesomeIcons.cog)),
        ],
      )),
    );
  }
}

