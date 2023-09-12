import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_widget/home_widget.dart';

import 'home_widget_helper.dart';

class HomeWidgetView extends StatefulWidget {
  const HomeWidgetView({super.key});

  @override
  _HomeWidgetViewState createState() => _HomeWidgetViewState();
}

class _HomeWidgetViewState extends State<HomeWidgetView> {
  @override
  void initState() {
    super.initState();
    HomeWidget.setAppGroupId('YOUR_GROUP_ID');
    HomeWidget.registerBackgroundCallback(backgroundCallback);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _checkForWidgetLaunch();
    HomeWidget.widgetClicked.listen(_launchedFromWidget);
  }

  Future _sendData() async {
    try {
      return Future.wait([
        HomeWidget.saveWidgetData<String>('title', "Üretim: 50"),
        // HomeWidget.saveWidgetData<String>('title2', "Üretim2: 502"),
        HomeWidget.saveWidgetData<String>('message', "Hedeflenen Üretim: 26"),
        // HomeWidget.renderFlutterWidget(
        //   const Icon(
        //     Icons.production_quantity_limits_outlined,
        //     size: 200,
        //   ),
        //   logicalSize: const Size(200, 200),
        //   key: 'dashIcon',
        // ),
      ]);
    } on PlatformException catch (exception) {
      debugPrint('Error Sending Data. $exception');
    }
  }

  Future _updateWidget() async {
    try {
      return HomeWidget.updateWidget(
          name: 'HomeWidgetExampleProvider', iOSName: 'HomeWidgetExample');
    } on PlatformException catch (exception) {
      debugPrint('Error Updating Widget. $exception');
    }
  }

  Future<void> _sendAndUpdate() async {
    await _sendData();
    await _updateWidget();
  }

  void _checkForWidgetLaunch() {
    HomeWidget.initiallyLaunchedFromHomeWidget().then(_launchedFromWidget);
  }

  void _launchedFromWidget(Uri? uri) {
    if (uri != null) {
      showDialog(
          context: context,
          builder: (buildContext) => AlertDialog(
                title: const Text('App started from HomeScreenWidget'),
                content: Text('Here is the URI: $uri'),
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeWidget Example'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: _sendAndUpdate,
              child: const Text('Send Data to Widget'),
            ),
            ElevatedButton(
              onPressed: _checkForWidgetLaunch,
              child: const Text('Check For Widget Launch'),
            ),
          ],
        ),
      ),
    );
  }
}
