part of 'inner_drawer.dart';

enum ConnectionType{
  Wifi,
  Mobile
}

@immutable
abstract class InternetState {}
class InternetLoading extends InternetState {}

class InternetDisconnected extends InternetState {}

class InternetConnected extends InternetState {
  final ConnectionType connectionType;

  InternetConnected({@required this.connectionType});
}