 
part of 'inner_drawer.dart';
// class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final Size size;
//   final Color color;
//   final Color textColor;
//   final bool showDrawer;
//   final Widget leadingWidget; 
//   final List<Widget> actions;
//   final String title;
//   final bool showTrailing;
//   const MyCustomAppBar({
//     Key key,
//     this.size,
//    this.leadingWidget,
//     this.showDrawer = false,
//     this.showTrailing = false,
//     @required this.title,
//     this.color,
//     this.actions,
//     this.textColor,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     /*his.textColor??(context.watch<ThemeCubit>().isDarkThemEnabled
//         ? Colors.white
//         : Colors.black);*/
//     return AppBar(
//      brightness:MediaQuery.of(context).platformBrightness== Brightness.dark?
//      Brightness.dark: Brightness.light,
//       titleTextStyle: TextStyle(
//         fontFamily: 'Akaya',
//         fontSize: 32,
//       ),
//      // systemOverlayStyle: Theme.of(context).appBarTheme.systemOverlayStyle,
//       elevation: 0,
//       automaticallyImplyLeading: false,
//       leading: leadingWidget ?? IconButton(
//         icon: showDrawer
//             ? Icon(
//           Icons.menu,
//           color: textColor ?? Colors.indigo.shade300,
//           size: 35,
//         )
//             : Icon(
//                 Icons.arrow_back_ios_rounded,
//                 color: textColor ?? Colors.indigo.shade300,
//                 size: 35,
//               ),
//         onPressed: () => showDrawer
//             ? InnerCustomDrawer.innerDrawerKey.currentState.open()
//             : Navigator.pop(context),
//       ),
//       actions: actions ??
//           (showTrailing
//               ? [
//                   IconButton(
//                     icon: Icon(Icons.search, color: textColor ?? Colors.indigo.shade300, size: 35),
//                     onPressed: () {},
//                   ),
//                 ]
//               : []),
//       backgroundColor: color ?? Theme.of(context).scaffoldBackgroundColor,
//       // context.read<ThemeCubit>().defaultColor,
//       title: Text(
//         title,
//         style: TextStyle(
//           fontSize: 25,
//           fontWeight: FontWeight.bold,
//           fontFamily: 'Akaya',
//           color: textColor ??  Colors.indigo.shade300,
//         ),
//       ),

//       centerTitle: true,
//     );
//   }

//   @override
//   Size get preferredSize => size ?? Size(double.infinity, 60);
// }
