import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive/views/desktop.dart';
import 'package:responsive/views/tablet.dart';
import 'phone.dart';


class HomePage extends GetResponsiveView {
  HomePage({super.key})
      : super(
      settings: const ResponsiveScreenSettings(
        desktopChangePoint: 1200,
        tabletChangePoint: 640,
      ));

  @override
  Widget phone() {
    return const PhoneView();
  }

  @override
  Widget tablet() {
    return const TabletView();
  }

  @override
  Widget desktop(){
    return const DesktopView();
  }

}