import 'dart:js_util';

import 'package:onesignal_web/interop/onesignal_js.dart';

abstract class OneSignalWrapper {
  static Future<void> init({required InitOptions options}) async {
    await promiseToFuture(OneSignalJs.init(options));
  }

  static Future<void> setExternalUserId(String userId) async {
    await promiseToFuture(OneSignalJs.setExternalUserId(userId));
  }

  static Future<void> removeExternalUserId() async {
    await promiseToFuture(OneSignalJs.removeExternalUserId());
  }

  static Future<void> promptForPermission() async {
    await promiseToFuture(OneSignalJs.showSlidedownPrompt());
  }
}
