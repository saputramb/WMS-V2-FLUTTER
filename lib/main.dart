import 'package:wms_v2/bootstrap.dart';
import 'package:wms_v2/src/config/app_config.dart';

Future<void> main() async {
  await bootstrap(
    firebaseInitialization: () async {},
    flavorConfiguration: () async {
      AppConfig.apiUrl;
    },
  );
}
