library inner_drawer;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';

part 'custom_appbar.dart';

class InnerCustomDrawer extends StatelessWidget {
  final bool isRight;
  final Widget mainScreen;
  final Widget drawerContent;
  static GlobalKey<InnerDrawerState> innerDrawerKey =
      GlobalKey<InnerDrawerState>();

  const InnerCustomDrawer(
      {Key key,
      this.isRight = false,
      @required this.mainScreen,
      this.drawerContent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InnerDrawer(
      key: innerDrawerKey,
      borderRadius: 28,
      offset: IDOffset.only(
        bottom: 0.1,
      ),
      onTapClose: true,
      leftAnimationType: InnerDrawerAnimation.quadratic,
      rightAnimationType: InnerDrawerAnimation.quadratic,
      backgroundDecoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      scaffold: mainScreen,
      leftChild: !isRight ? drawerContent : null,
      rightChild: isRight ? drawerContent : null,
    );
  }
}
