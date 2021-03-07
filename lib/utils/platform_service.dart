import 'package:flutter/material.dart';
import 'package:responsividade/utils/default_sizes.dart';

class PlatformService {
  final BoxConstraints constraints;

  PlatformService({@required this.constraints});

  double get toolbarHeight => isMobile()
      ? mobileToolbarHeight
      : isTablet()
          ? tabletToolbarHeight
          : desktopToolbarHeight;

  double get toolbarContentHeight => toolbarHeight * 0.75;

  bool isMobile() => constraints.maxWidth < mobileBreakpoint;
  bool isTablet() =>
      constraints.maxWidth >= mobileBreakpoint && constraints.maxWidth < 1200;
  bool isDesktop() => constraints.maxWidth >= 1200;
}
