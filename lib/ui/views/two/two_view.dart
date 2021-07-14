import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:funvas/funvas.dart';
import 'package:stacked/stacked.dart';

import './two_view_model.dart';

class TwoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TwoViewModel>.reactive(
      viewModelBuilder: () => TwoViewModel(),
      onModelReady: (TwoViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        TwoViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Funvas Two'),
          ),
          body: Center(
            child: Container(
              height: 420,
              width: 420,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 15,
                    ),
                  ]),
              child: FunvasContainer(
                funvas: _TwoFunvas(),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _TwoFunvas extends Funvas {
  @override
  void u(double t) {
    for (int i = 50; i <= 305; i += 105) {
      for (int j = 50; j <= 305; j += 105) {
        for (int k = 50; k < 305; k += 105) {
          c.drawArc(
            Rect.fromLTWH(i.toDouble(), 245, 100, 100),
            1 * t,
            1 * T(t),
            true,
            Paint()..color = Colors.red,
          );
        }

        c.drawArc(
          Rect.fromLTWH(i.toDouble(), 140, 100, 100),
          1 * t,
          1 * T(t),
          true,
          Paint()..color = Colors.red,
        );
      }
      c.drawArc(
        Rect.fromLTWH(i.toDouble(), 35, 100, 100),
        1 * t,
        1 * T(t),
        true,
        Paint()..color = Colors.red,
      );
    }

    // c.drawArc(
    //   Rect.fromLTWH(120, 15, 100, 100),
    //   1 * t,
    //   1 * T(t),
    //   true,
    //   Paint()..color = Colors.red,
    // );

    // c.drawArc(
    //   Rect.fromLTWH(225, 15, 100, 100),
    //   1 * t,
    //   1 * T(t),
    //   true,
    //   Paint()..color = Colors.red,
    // );
  }
}
