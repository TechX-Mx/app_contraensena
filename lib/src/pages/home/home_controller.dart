import 'package:flutter/material.dart';
import 'package:device_apps/device_apps.dart';

class HomeController {
  BuildContext? context;
  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  List<Application> apps = [];

  Future init(BuildContext context) async {
    this.context = context;
    await listApps();
  }

  Future listApps() async {
    apps = await DeviceApps.getInstalledApplications(
        includeAppIcons: true, includeSystemApps: false);
    print(apps[0]);
  }
}
