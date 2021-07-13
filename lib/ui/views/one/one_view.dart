import 'package:flutter/material.dart';
import 'package:funvas/funvas.dart';
import 'package:stacked/stacked.dart';

import './one_view_model.dart';

class OneView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OneViewModel>.reactive(
      viewModelBuilder: () => OneViewModel(),
      onModelReady: (OneViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        OneViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Funvas One'),
          ),
          body: Center(
            child: SizedBox(
              height: 420,
              width: 420,
              child: FunvasContainer(
                funvas: _OneFunvas(),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _OneFunvas extends Funvas {
  @override
  void u(double t) {
    c.drawCircle(
      Offset(x.width / 2, x.height / 2),
      S(t).abs() * x.height / 4 + 42,
      Paint()..color = R(C(t) * 255, 42, 60 + T(t)),
    );
    c.drawCircle(
      Offset(x.width / 3, x.height / 3),
      S(t).abs() * x.height / 6 + 42,
      Paint()..color = R(C(t) * 255, 42, 60 + T(t)),
    );
    c.drawCircle(
      Offset(x.width / 1.5, x.height / 1.5),
      S(t).abs() * x.height / 6 + 42,
      Paint()..color = R(C(t) * 255, 42, 60 + T(t)),
    );
  }
}
