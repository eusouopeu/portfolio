import 'package:flutter/material.dart';

bool isDesktopDevice(BuildContext context) {
  final double deviceWidth = MediaQuery.of(context).size.width;
  return deviceWidth >
      800; // Considera Desktop se a largura for maior que 800px
}
