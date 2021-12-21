part of 'controller.dart';


class NetworkController extends GetxController {
  var connectionStatus = 0.obs;
  late StreamSubscription<ConnectivityResult>
  connectivitySubcription;

  @override
  void onInit() {
    super.onInit();
    connectivitySubcription = Connectivity().onConnectivityChanged.listen
      (_updateConnectionStatus);
  }

  // Fungsi untuk menentukan koneksi
  _updateConnectionStatus(ConnectivityResult result) async {
    try {
      result = await Connectivity().checkConnectivity();
    } catch (e) {
      print(e);
    } switch (result) {
      case ConnectivityResult.wifi:
        connectionStatus.value = 1;
        break;
      case ConnectivityResult.mobile:
        connectionStatus.value = 2;
        break;
      case ConnectivityResult.ethernet:
        connectionStatus.value = 3;
        break;
      case ConnectivityResult.none:
        connectionStatus.value = 0;
        break;
    }
  }
}