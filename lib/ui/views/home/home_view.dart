import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import './home_view_model.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (HomeViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        HomeViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () async {
                    await model.navigateToOneView();
                  },
                  child: Text(
                    "Funvas One",
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    await model.navigateToTwoView();
                  },
                  child: Text(
                    "Funvas Two",
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
