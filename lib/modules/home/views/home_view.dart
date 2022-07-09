import 'package:communiSAFE/modules/profile/controllers/profile_controller.dart';
import 'package:communiSAFE/modules/report/controllers/report_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../dashboard/controllers/dashboard_controller.dart';
import '../controllers/home_controller.dart';
import '../../dashboard/views/dashboard_view.dart';
import '../../report/views/report_view.dart';
import '../../profile/views/profile_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final controller = Get.find<HomeController>();
  final reportController = Get.put(ReportController());
  final dashboardController = Get.put(DashboardController());
  final profileController = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                DashboardView(),
                //Text('Report View'),
                ReportView(),
                ProfileView(),
                // NewsPage(),
                // AlertsPage(),
                // AccountPage(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedIconTheme:
                IconThemeData(color: Colors.amberAccent, size: 25),
            selectedItemColor: Colors.amberAccent,
            unselectedIconTheme: IconThemeData(
              color: Colors.deepOrangeAccent,
            ),
            unselectedItemColor: Colors.deepOrangeAccent,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.camera),
                label: 'Report',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person),
                label: 'Account',
              ),
            ],
          ),
        );
      },
    );
  }
}
