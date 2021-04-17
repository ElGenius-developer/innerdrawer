part of 'inner_drawer.dart';

class InternetWidget extends StatelessWidget {
  final Widget child;

  const InternetWidget({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return kIsWeb
        ? child
        : BlocBuilder<InternetCubit, InternetState>(
            builder: (context, state) {
              if (state is InternetLoading) {
                return Center(
                  child: CupertinoActivityIndicator(),
                );
              } else if (state is InternetDisconnected) {
                return Center(
                  child: Text(
                    'No internet',
                  ),
                );
              } else {
                return child;
              }
            },
          );
  }
}
