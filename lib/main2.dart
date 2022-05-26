import 'package:flutter/material.dart';
import 'dart:io';
import 'package:camera/camera.dart';

late List<CameraDescription> _cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  _cameras = await availableCameras();
}

class Visitorflow6 extends StatefulWidget {
  const Visitorflow6({Key? key}) : super(key: key);

  @override
  State<Visitorflow6> createState() => _Visitorflow6State();
}

class _Visitorflow6State extends State<Visitorflow6> {
  late CameraController controller;
  @override
  void initState() {
    super.initState();
    controller = CameraController(_cameras[1], ResolutionPreset.max,
        imageFormatGroup: ImageFormatGroup.jpeg);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            print('User denied camera access.');
            break;
          default:
            print('Handle other errors.');
            break;
        }
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }

    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
              backgroundColor: Colors.orange.shade700,
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Smile for the camera....',
                        style: TextStyle(color: Colors.white, fontSize: 25)),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 250,
                        width: 200,
                        child: ClipOval(child: CameraPreview(controller))),
                    SizedBox(
                      height: 15,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.radio_button_unchecked,
                        color: Colors.black,
                        size: 50,
                      ),
                    )
                  ],
                ),
              ))),
    );
  }
}
