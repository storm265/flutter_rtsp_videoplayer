# rtsp_ffmpeg

An FFMPEG based RTSP player flutter plugin. This support Almost real time RTSP playback using native code.

Modified fork from: com.xcellapps.flutter.rtsp_ffmpeg

Note: project not working in release mode. Works fine in profile mode.

video delay is about 130-170ms

## Getting Started

#### 1) Add to your project:

```
dependencies:
  flutter:
    sdk: flutter


  rtsp_ffmpeg:
    git: 
      url: https://github.com/storm265/flutter_rtsp_videoplayer.git
      ref: main
	 
```     

#### 2) Usage example:

```
Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: RtspFFMpeg(
          createdCallback: (controller) async {
            await controller.play('rtsp://xxx.xxx.xx.xxx:8554/test'); //Put your rtsp
          },
        ),
      ),
``` 	 
	  
	  
