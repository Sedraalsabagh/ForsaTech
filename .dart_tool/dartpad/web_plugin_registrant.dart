// Flutter web plugin registrant file.
//
// Generated file. Do not edit.
//

// @dart = 2.13
// ignore_for_file: type=lint

import 'package:connectivity_plus/src/connectivity_plus_web.dart';
import 'package:flutter_native_splash/flutter_native_splash_web.dart';
import 'package:network_info_plus/src/network_info_plus_web.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void registerPlugins([final Registrar? pluginRegistrar]) {
  final Registrar registrar = pluginRegistrar ?? webPluginRegistrar;
  ConnectivityPlusWebPlugin.registerWith(registrar);
  FlutterNativeSplashWeb.registerWith(registrar);
  NetworkInfoPlusWebPlugin.registerWith(registrar);
  registrar.registerMessageHandler();
}
