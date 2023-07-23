import 'package:flutter/material.dart';
import 'package:is_gps_open/is_gps_open.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  bool? _gpsOpen;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('GPS Status: $_gpsOpen'),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text("Get Status"),
                onPressed: () async {
                  _gpsOpen = await GpsStatus.isOpen();
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
