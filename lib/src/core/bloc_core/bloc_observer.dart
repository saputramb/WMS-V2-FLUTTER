import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wms_v2/src/core/services/log_service/log_service.dart';
import 'package:wms_v2/src/di/injection.dart';

class AppBlocObserver extends BlocObserver {
  AppBlocObserver() {
    _logService = Injection.instance<LogService>();
  }

  late final LogService _logService;

  @override
  void onCreate(BlocBase bloc) {
    _logService.i('BLoC: ${bloc.runtimeType} created');
    super.onCreate(bloc);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    _logService.i('Event: ${event.runtimeType} added');
    super.onEvent(bloc, event);
  }
}
