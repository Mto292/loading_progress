import 'package:flutter/material.dart';

class LoadingProgress {
  static start(
    BuildContext context, {
    Color? barrierColor = Colors.black54,
    String? barrierLabel,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
    Widget? widget,
    Color color = Colors.black38,
    BorderRadiusGeometry? borderRadius,
    String? gifOrImagePath,
  }) async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: barrierColor,
      useSafeArea: useSafeArea,
      barrierLabel: barrierLabel,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () async => false,
          child: Center(
            child: widget ??
                Container(
                  width: MediaQuery.of(context).size.width / 4,
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width / 13),
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: borderRadius ??
                        const BorderRadius.all(
                          Radius.circular(12),
                        ),
                  ),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: gifOrImagePath != null ? Image.asset(gifOrImagePath) : const CircularProgressIndicator(),
                  ),
                ),
          ),
        );
      },
    );
  }

  static stop(BuildContext context, [bool rootNavigator = true]) {
    return Navigator.of(context, rootNavigator: rootNavigator).pop();
  }
}
