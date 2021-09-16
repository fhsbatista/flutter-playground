import 'package:flutter_playground/modules/home/home_module.dart';
import 'package:flutter_playground/modules/qrcode/presentation/qrcode_module.dart';
import 'package:stark/stark.dart';

class AppInject {
  static final Set<Bind> dependencies = {
    ...homeDependencies,
    ...qrcodeDependencies,
  };
}
