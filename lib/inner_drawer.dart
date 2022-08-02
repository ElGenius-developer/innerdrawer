library inner_drawer;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';

part 'custom_appbar.dart';

class InnerCustomDrawer extends StatelessWidget {
  final bool? isRight;
  final Color menuBackgroundColor;
  final Widget mainScreen;
  final Widget drawerContent;
  final ZoomDrawerController controller;

  const InnerCustomDrawer({
    Key? key,
    required this.menuBackgroundColor,
    required this.drawerContent,
    required this.mainScreen,
    required this.controller,
    this.isRight = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, deviceInfo) {
      return ZoomDrawer(
        mainScreenScale: .15,
        controller: controller,
        borderRadius: 24,
        disableDragGesture: true,
        moveMenuScreen: true,
        closeCurve: Curves.easeOutQuint,
        isRtl: isRight!,
        mainScreenTapClose: true,
        openCurve: Curves.fastOutSlowIn,
        menuScreenWidth:MediaQuery.of(context).size.width*.25,
        overlayBlend: BlendMode.colorDodge,
        duration: const Duration(milliseconds: 200),
        angle: 0,
        mainScreen: mainScreen,
        menuScreen: drawerContent,
        menuBackgroundColor: menuBackgroundColor,
      );
    });
  }
}
