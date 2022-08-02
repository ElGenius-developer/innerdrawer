library inner_drawer;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ResponsiveBuilder(builder: (context, deviceInfo) {
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
          menuScreenWidth: deviceInfo.isMobile
              ? deviceInfo.localWidgetSize.width * .6
              : deviceInfo.isTablet
                  ? deviceInfo.localWidgetSize.width * .4
                  : deviceInfo.localWidgetSize.width * .3,
          overlayBlend: BlendMode.colorDodge,
          duration: const Duration(milliseconds: 200),
          angle: 0,
          mainScreen: mainScreen,
          menuScreen: drawerContent,
          menuBackgroundColor: menuBackgroundColor,
        );
      }),
    );
  }
}
