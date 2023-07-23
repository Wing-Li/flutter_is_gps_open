library is_gps_open;

import 'package:flutter/services.dart';

const _channel = MethodChannel('is_gps_open');

class GpsStatus {
  GpsStatus._();

  static GpsStatus? _singleton;

  factory GpsStatus() {
    _singleton ??= GpsStatus._();
    return _singleton!;
  }

  static Future<bool?> isOpen() async {
    return await _channel.invokeMethod('isGpsOpen') as bool?;
  }
}
