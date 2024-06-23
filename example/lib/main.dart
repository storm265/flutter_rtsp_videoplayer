import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rtsp_ffmpeg/rtsp_ffmpeg.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: RtspFFMpeg(
          createdCallback: (controller) async {
            // paster your rstp url here:
            // Example "rtsp://192.168.1.14:8554/4kvideo"
            await controller.play('Example "rtsp://192.168.1.14:8554/4kvideo"');
          },
        ),
      ),
    );
  }
}
