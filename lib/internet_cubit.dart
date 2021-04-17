part of 'inner_drawer.dart';

class InternetCubit extends Cubit<InternetState> {
  final Connectivity connectivity;
  StreamSubscription connectivityStreamSubscription;

  InternetCubit({@required this.connectivity}) : super(InternetLoading()) {
    monitorInternetConnection();
  }
  StreamSubscription<ConnectivityResult> monitorInternetConnection() {
    return connectivityStreamSubscription =
        connectivity.onConnectivityChanged.listen((connectionResult) {
      switch (connectionResult) {
        case ConnectivityResult.wifi:
          emitConnectedState(ConnectionType.Wifi);
          break;
        case ConnectivityResult.mobile:
          emitConnectedState(ConnectionType.Mobile);
          break;
        case ConnectivityResult.none:
          emitDisconnected();
          break;
      }
    });
  }

  void emitConnectedState(ConnectionType _connectionType) =>
      emit(InternetConnected(connectionType: _connectionType));
  void emitDisconnected() => emit(InternetDisconnected());

  @override
  Future<void> close() {
    connectivityStreamSubscription.cancel();
    return super.close();
  }
}
