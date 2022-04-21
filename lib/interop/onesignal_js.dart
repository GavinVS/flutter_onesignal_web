@JS()
library one_signal_js;

import 'package:js/js.dart';

@JS('OneSignal')
abstract class OneSignalJs {
  external static Object init(InitOptions options);

  external static Object setDefaultNotificationUrl(String url);
  external static Object setDefaultTitle(String title);

  external static Object provideUserConsent(bool consent);
  external static Object showNativePrompt();
  external static Object registerForPushNotifications();

  external static Object showSlidedownPrompt();
  external static Object showCategorySlidedown();

  external static Object getNotificationPermission();
  external static Object isPushNotificationSupported();
  external static Object isPushNotificationsEnabled();

  external static Object getUserId();
  external static Object getExternalUserId();
  external static Object setExternalUserId(String userId);
  external static Object removeExternalUserId();

  external static Object sendTag(String key, String value);
  external static Object sendTags(Object keyValues);
  external static Object getTags();
  external static Object deleteTag(String key);
  external static Object deleteTags(List<String> keys);

  external static Object sendSelfNotification(
    String title,
    String message,
    String url,
    String icon,
    Object data,
    List<Object> buttons,
  );

  external static Object setSubscription(bool unmute);

  external static Object addListenerForNotificationOpened(Function callback);

  external static Object setEmail(String email);
  external static Object logoutEmail();
  external static Object getEmailId();

  external static Object setSMSNumber(String number);
  external static Object logoutSMSNumber(String number);
  external static Object getSMSId();

  external static Object on(Function callback);
  external static Object once(Function callback);
}

@JS()
@anonymous
class InitOptions {
  external String get appId;
  external String get subdomainName;
  external bool get requiresUserPrivacyConsent;
  external PromptOptions get promptOptions;
  external WelcomeNotification get welcomeNotification;
  external NotifyButton get notifyButton;
  external bool get persistNotification;
  external Object get webhooks;
  external bool get autoResubscribe;
  external String get notificationClickHandlerMatch;
  external String get notificationClickHandlerAction;
  external String get path;

  external factory InitOptions({
    String appId,
    String? subdomainName,
    bool? requiresUserPrivacyConsent,
    PromptOptions? promptOptions,
    WelcomeNotification? welcomeNotification,
    NotifyButton? notifyButton,
    bool persistNotification,
    Object? webooks,
    bool? autoResubscribe,
    String? notificationClickHandlerMatch,
    String? notificationClickHandlerAction,
    String? path,
  });
}

@JS()
@anonymous
class PromptOptions {
  external String get actionMessage;
  external String get exampleNotificationTitleDesktop;
  external String get exampleNotificationMessageDesktop;
  external String get exampleNotificationTitleMobile;
  external String get exampleNotificationMessageMobile;
  external String get exampleNotificationCaption;
  external String get acceptButtonText;
  external String get cancelButtonText;
  external bool get showCredit;

  external factory PromptOptions({
    String? actionMessage,
    String? exampleNotificationTitleDesktop,
    String? exampleNotificationMessageDesktop,
    String? exampleNotificationTitleMobile,
    String? exampleNotificationMessageMobile,
    String? exampleNotificationCaption,
    String? acceptButtonText,
    String? cancelButtonText,
    bool? showCredit,
  });
}

@JS()
@anonymous
class WelcomeNotification {
  external bool get disable;
  external String get title;
  external String get message;
  external String get url;

  external factory WelcomeNotification({
    bool? disable,
    String? title,
    String? message,
    String? url,
  });
}

@JS()
@anonymous
class NotifyButton {
  external bool get enable;
  external Function get displayPredicate;
  external String get size;
  external String get position;
  external Offset get offset;
  external bool get prenotify;
  external bool get showCredit;
  external Object get text;

  external factory NotifyButton({
    bool? enable,
    Function? displayPredicate,
    String? size,
    String? position,
    Offset? offset,
    bool? prenotify,
    bool? showCredit,
    Object? text,
  });
}

@JS()
@anonymous
class Offset {
  external String get bottom;
  external String get left;
  external String get right;

  external factory Offset({
    String? bottom,
    String? left,
    String? right,
  });
}
