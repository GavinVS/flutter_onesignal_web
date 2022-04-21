import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:onesignal_web/interop/onesignal_js.dart';
import 'package:onesignal_web/onesignal_wrapper.dart';

class OnesignalWeb {
  static void registerWith(Registrar registrar) {
    WidgetsFlutterBinding.ensureInitialized();
    final channel = MethodChannel('OneSignal', const StandardMethodCodec(), registrar);
    final pluginInstance = OnesignalWeb();
    channel.setMethodCallHandler(pluginInstance.handleMethodCall);
  }

  Future<dynamic> handleMethodCall(MethodCall call) async {
    switch (call.method) {
      case 'OneSignal#setAppId':
        OneSignalWrapper.init(options: InitOptions(appId: call.arguments['appId']));
        break;
      case 'OneSignal#setExternalUserId':
        OneSignalWrapper.setExternalUserId(call.arguments[0]);
        break;
      case 'OneSignal#removeExternalUserId':
        OneSignalWrapper.removeExternalUserId();
        break;
      case 'OneSignal#promptPermission':
        OneSignalWrapper.promptForPermission();
        break;
      case 'OneSignal#setLogLevel': // irrelevent
      case 'OneSignal#log': // irrelevent
      case 'OneSignal#initNotificationOpenedHandlerParams':
        break;
      case 'OneSignal#requiresUserPrivacyConsent':
      case 'OneSignal#setRequiresUserPrivacyConsent':
      case 'OneSignal#consentGranted':
      case 'OneSignal#userProvidedPrivacyConsent':
      case 'OneSignal#getDeviceState':
      case 'OneSignal#disablePush':
      case 'OneSignal#postNotification':
      case 'OneSignal#promptLocation':
      case 'OneSignal#setLocationShared':
      case 'OneSignal#setEmail':
      case 'OneSignal#logoutEmail':
      case 'OneSignal#setSMSNumber':
      case 'OneSignal#logoutSMSNumber':
      case 'OneSignal#setLanguage':
      case 'OneSignal#initInAppMessageClickedHandlerParams':
      case 'OneSignal#initNotificationWillShowInForegroundHandlerParams':
      case 'OneSignal#completeNotification':
      case 'OneSignal#clearOneSignalNotifications':
      case 'OneSignal#removeNotification':
      default:
        throw PlatformException(
          code: 'Unimplemented',
          details: "The onesignal plugin for web doesn't implement '${call.method}'",
        );
    }
  }
}
