 
part of 'inner_drawer.dart';
class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Size size;
  final Color color;
  final Color textColor;
  final bool showDrawer;
  final List<Widget> actions;
  final String title;
  final bool showTrailing;
  const MyCustomAppBar({
    Key key,
    this.size,
    this.showDrawer = false,
    this.showTrailing = false,
    @required this.title,
    this.color,
    this.actions,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textColor = Colors.black;
    /*his.textColor??(context.watch<ThemeCubit>().isDarkThemEnabled
        ? Colors.white
        : Colors.black);*/
    return AppBar(
      titleTextStyle: TextStyle(
        fontFamily: 'Akaya',
        fontSize: 32,
      ),
      systemOverlayStyle: Theme.of(context).appBarTheme.systemOverlayStyle,
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: showDrawer
            ? Icon(
          Icons.menu,
          color: textColor,
          size: 35,
        )
            : Icon(
                Icons.arrow_back_ios_rounded,
                color: textColor,
                size: 35,
              ),
        onPressed: () => showDrawer
            ? InnerCustomDrawer.innerDrawerKey.currentState.open()
            : Navigator.pop(context),
      ),
      actions: actions ??
          (showTrailing
              ? [
                  IconButton(
                    icon: Icon(Icons.search, color: textColor, size: 35),
                    onPressed: () {},
                  ),
                ]
              : []),
      backgroundColor: color ?? Colors.deepPurple,
      // context.read<ThemeCubit>().defaultColor,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          fontFamily: 'Akaya',
          color: textColor ?? Colors.white,
        ),
      ),

      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => size ?? Size(double.infinity, 60);
}
