import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sistem_kompen_app/core/colors.dart';
import 'package:sistem_kompen_app/core/images.dart';
import 'package:sistem_kompen_app/features/history/history_page.dart';
import 'package:sistem_kompen_app/features/home/home_page.dart';
import 'package:sistem_kompen_app/features/profile/profile_page.dart';
import 'package:sistem_kompen_app/features/task/task_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  DashboardPageState createState() => DashboardPageState();
}

class DashboardPageState extends State<DashboardPage> {
  var currentIndex = 0;
  List<Widget> pages = [
    const HomePage(),
    const TaskPage(),
    const HistoryPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: pages[currentIndex],
      floatingActionButton: Container(
        margin: EdgeInsets.all(displayWidth * .05),
        height: 64,
        decoration: BoxDecoration(
          color: AppColors.secondary,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 30,
              offset: const Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(listIconsActive.length, (index) {
            return InkWell(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: SvgPicture.asset(
                currentIndex == index ? listIconsActive[index] : listIconsDisable[index],
              ),
            );
          }),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  List<String> listIconsActive = [
    AppImages.icHomeActive,
    AppImages.icTaskActive,
    AppImages.icHistoryActive,
    AppImages.icProfileActive,
  ];
  List<String> listIconsDisable = [
    AppImages.icHomeDisable,
    AppImages.icTaskDisable,
    AppImages.icHistoryDisable,
    AppImages.icProfileDisable,
  ];
}
