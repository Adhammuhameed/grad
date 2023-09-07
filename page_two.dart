// import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   List<CameraDescription> cameras = await availableCameras();
//   runApp(page_Two(cameras));
// }
//
//  class page_Two extends StatelessWidget {
//   //const page_Two({super.key});
//   final List<CameraDescription> cameras;
//
//   page_Two(this.cameras);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: CameraView(cameras),
//     );
//   }
// }
//
// class CameraView extends StatefulWidget {
//   final List<CameraDescription> cameras;
//
//   CameraView(this.cameras);
//
//   @override
//   _CameraViewState createState() => _CameraViewState();
// }
//
// class _CameraViewState extends State<CameraView> {
//   late CameraController _controller;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = CameraController(widget.cameras[0], ResolutionPreset.medium);
//     _controller.initialize().then((_) {
//       if (!mounted) {
//         return;
//       }
//       setState(() {});
//     });
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (!_controller.value.isInitialized) {
//       return Container();
//     }
//     return AspectRatio(
//       aspectRatio: _controller.value.aspectRatio,
//       child: CameraPreview(_controller),
//     );
//   }
// }
import 'package:flutter/material.dart';

class page_Two extends StatelessWidget {
  const page_Two({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Colors.orange,
        title: Text('Admin', style: TextStyle(fontSize: 21),),

      ),
      //       body: Center(
      //     child: ElevatedButton(onPressed:() {
      //      Navigator.pop(context);
      // }, child: const Text('Back')),
      // ),
    );
  }
}
