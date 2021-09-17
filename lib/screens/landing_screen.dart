import 'package:app_assignment/utils/app_assets.dart';
import 'package:app_assignment/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'browse_therapist_screen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  PersistentTabController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          icon: Image.asset(AppAssets.browseTherapist, scale: 2.5),
          activeColorPrimary: AppColors.kWhite,
          inactiveColorPrimary: AppColors.kGrey),
      PersistentBottomNavBarItem(
          icon: Image.asset(AppAssets.wellness, scale: 2.5),
          activeColorPrimary: AppColors.kWhite,
          inactiveColorPrimary: AppColors.kGrey),
      PersistentBottomNavBarItem(
        title: 'Wanna Chat?',
        textStyle: GoogleFonts.nunito(color: AppColors.kWhite),
        icon: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: AppColors.kBlue.withOpacity(0.5)),
          child: Image.asset(
            AppAssets.wannaChat,
            scale: 2.5,
          ),
        ),
        activeColorPrimary: AppColors.kWhite,
        inactiveColorPrimary: AppColors.kWhite,
        activeColorSecondary: AppColors.kBlue,
        inactiveColorSecondary: AppColors.kBlue,
      ),
      PersistentBottomNavBarItem(
          icon: Image.asset(AppAssets.meetTherapist, scale: 2.5),
          activeColorPrimary: AppColors.kWhite,
          inactiveColorPrimary: AppColors.kGrey),
      PersistentBottomNavBarItem(
          icon: Image.asset(AppAssets.personProfile, scale: 2.5),
          activeColorPrimary: AppColors.kWhite,
          inactiveColorPrimary: AppColors.kGrey),
    ];
  }

  List<Widget> _buildScreens() {
    return [
      BrowseTherapistScreen(),
      Container(),
      Container(),
      Container(),
      Container(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: AppColors.kBlue, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(30.0),
        colorBehindNavBar: AppColors.kWhite,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style15, // Choose the nav bar style with this property.
    );
  }
}
