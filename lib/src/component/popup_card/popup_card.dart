import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PopupCard extends HookWidget {
  final MenuController controller;
  final Widget child;
  final Widget popup;
  final double defaultPopupHeight;

  const PopupCard({
    super.key,
    required this.controller,
    required this.child,
    required this.popup,
    required this.defaultPopupHeight,
  });
  @override
  Widget build(BuildContext context) {
    return RawMenuAnchor(
      controller: controller,
      onCloseRequested: (hideOverlay) {
        hideOverlay();
      },
      overlayBuilder: (context, info) {
        final screen = MediaQuery.sizeOf(context);
        final height = min(screen.height, defaultPopupHeight);
        final top = min(info.anchorRect.bottom, screen.height - height - 8);

        return Positioned(
          left: info.anchorRect.left,
          top: top,
          width: info.anchorRect.width,
          height: height,
          child: TapRegion(
            onTapOutside: (event) {
              controller.close();
            },
            child: Material(
              borderRadius: .all(.circular(8)),
              clipBehavior: .antiAliasWithSaveLayer,
              color: ColorScheme.of(context).surfaceContainer,
              elevation: 4,
              child: popup,
            ),
          ),
        );
      },
      child: child,
    );
  }
}
