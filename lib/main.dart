// import 'package:flutter/material.dart';
//
// ///学习页面来源
// String path = "https://www.youtube.com/watch?v=eegl7of4g-o";
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter 学习',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue[800],
//       bottomNavigationBar: BottomNavigationBar(items: const [
//         BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
//         BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
//         BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
//       ]),
//       body: SafeArea(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25),
//               child: Column(
//                 children: [
//                   Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             const Text(
//                               "Hi ,Jared!",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 24,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             const SizedBox(
//                               height: 8,
//                             ),
//                             Text("23 Jan 2024",
//                                 style: TextStyle(color: Colors.blue[200]))
//                           ],
//                         ),
//                         Container(
//                             decoration: BoxDecoration(
//                               color: Colors.blue[600],
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             padding: const EdgeInsets.all(12),
//                             child: const Icon(Icons.notifications,
//                                 color: Colors.white))
//                       ]),
//                   //search bar
//                   const SizedBox(
//                     height: 25,
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                         color: Colors.blue[600],
//                         borderRadius: BorderRadius.circular(12)),
//                     padding: const EdgeInsets.all(12),
//                     child: const Row(
//                       children: [
//                         Icon(
//                           Icons.search,
//                           color: Colors.white,
//                         ),
//                         SizedBox(
//                           width: 5,
//                         ),
//                         Text(
//                           "Search",
//                           style: TextStyle(color: Colors.white),
//                         )
//                       ],
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 25,
//                   ),
//                   // how do you feel
//                   const Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "How do you feel",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       Icon(Icons.more_horiz, color: Colors.white)
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 25,
//                   ),
//                   const Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       EmoticonFace(
//                         face: "😠",
//                         desc: "生气",
//                       ),
//                       EmoticonFace(
//                         face: "😄",
//                         desc: "高兴",
//                       ),
//                       EmoticonFace(
//                         face: "😢",
//                         desc: "沮丧",
//                       ),
//                       EmoticonFace(
//                         face: "😊",
//                         desc: "小确幸",
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: 25,
//             ),
//             Expanded(
//               child: Container(
//                 padding: const EdgeInsets.all(25),
//                 decoration: BoxDecoration(
//                   color: Colors.grey[200],
//                 ),
//                 child: Center(
//                   child: Column(
//                     children: [
//                       const Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             "Exercises",
//                             style: TextStyle(
//                                 fontSize: 20, fontWeight: FontWeight.bold),
//                           ),
//                           Icon(Icons.more_horiz)
//                         ],
//                       ),
//                       const SizedBox(
//                         height: 20,
//                       ),
//                       Expanded(
//                         child: ListView(children: const [
//                           ExerciseTile(
//                             icon: Icons.favorite,
//                             title: "Speaking Skills",
//                             numberOfExercises: "15",
//                             color: Colors.orange,
//                           ),
//                           ExerciseTile(
//                             icon: Icons.favorite,
//                             title: "Reading Skills",
//                             numberOfExercises: "35",
//                             color: Colors.indigoAccent,
//                           ),
//                           ExerciseTile(
//                             icon: Icons.favorite,
//                             title: "Writing Skills",
//                             numberOfExercises: "24",
//                             color: Colors.green,
//                           ),
//                         ]),
//                       )
//                     ],
//                   ),
//                 ),
//                 // child: ,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class EmoticonFace extends StatelessWidget {
//   final String face;
//   final String desc;
//   const EmoticonFace({super.key, required this.face, required this.desc});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           decoration: BoxDecoration(
//             color: Colors.blue[600],
//             borderRadius: const BorderRadius.all(Radius.circular(12)),
//           ),
//           padding: const EdgeInsets.all(16),
//           child: Center(
//               child: Text(
//             face,
//             style: const TextStyle(fontSize: 28),
//           )),
//         ),
//         const SizedBox(
//           height: 8,
//         ),
//         Text(
//           desc,
//           style: const TextStyle(fontSize: 16, color: Colors.white),
//         )
//       ],
//     );
//   }
// }
//
// class ExerciseTile extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final String numberOfExercises;
//   final Color color;
//   const ExerciseTile(
//       {super.key,
//       required this.icon,
//       required this.title,
//       required this.numberOfExercises,
//       required this.color});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 12.0),
//       child: Container(
//           padding: const EdgeInsets.all(16),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(16),
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(children: [
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(12),
//                   child: Container(
//                       padding: const EdgeInsets.all(16),
//                       color: color,
//                       child: Icon(
//                         icon,
//                         color: Colors.white,
//                       )),
//                 ),
//                 const SizedBox(
//                   width: 12,
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       title,
//                       style: const TextStyle(
//                           fontSize: 16, fontWeight: FontWeight.bold),
//                     ),
//                     const SizedBox(
//                       height: 5,
//                     ),
//                     Text(
//                       "$numberOfExercises Exercises",
//                       style: const TextStyle(fontSize: 14, color: Colors.grey),
//                     )
//                   ],
//                 ),
//               ]),
//               const Icon(Icons.more_horiz)
//             ],
//           )),
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// class DynamicPipeline extends StatelessWidget {
//   final List<Map<String, List<int>>> pipelineData;
//
//   DynamicPipeline({required this.pipelineData});
//
//   @override
//   Widget build(BuildContext context) {
//     // 获取屏幕宽度和高度
//     final screenSize = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Dynamic Pipeline'),
//       ),
//       body: Center(
//         child: CustomPaint(
//           size: screenSize, // 使用屏幕尺寸作为画布大小
//           painter: PipelinePainter(pipelineData, screenSize),
//         ),
//       ),
//     );
//   }
// }
//
// class PipelinePainter extends CustomPainter {
//   final List<Map<String, List<int>>> pipelineData;
//   final Size screenSize;
//
//   PipelinePainter(this.pipelineData, this.screenSize);
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = Colors.blue
//       ..strokeWidth = 8
//       ..style = PaintingStyle.stroke;
//
//     final path = Path();
//
//     for (var segment in pipelineData) {
//       // 使用屏幕尺寸比例计算起点和终点
//       final start = _getScaledPosition(segment['start']!, screenSize);
//       final end = _getScaledPosition(segment['end']!, screenSize);
//       path.moveTo(start.dx, start.dy);
//       path.lineTo(end.dx, end.dy);
//     }
//
//     canvas.drawPath(path, paint);
//   }
//
//   // 根据屏幕尺寸缩放位置
//   Offset _getScaledPosition(List<int> position, Size screenSize) {
//     double xScale = position[0] / 1440; // 假设设计稿宽度为1440
//     double yScale = position[1] / 960;  // 假设设计稿高度为960
//     return Offset(xScale * screenSize.width, yScale * screenSize.height);
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }
//
// void main() {
//   runApp(MaterialApp(
//     home: DynamicPipeline(
//       pipelineData: [
//         {"start": [310, 620], "end": [310, 500]},
//         {"start": [310, 500], "end": [400, 500]},
//         {"start": [400, 500], "end": [400, 265]},
//         {"start": [400, 265], "end": [550, 265]},
//       ],
//     ),
//   ));
// }
import 'package:flutter/material.dart';
import 'dart:js' as js;

class DynamicPipeline extends StatelessWidget {
  final List<Map<String, List<int>>> pipelineData;

  DynamicPipeline({required this.pipelineData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic Pipeline'),
      ),
      body: Center(
        child: InteractiveViewer(
          transformationController: _getTransformationController(context),
          boundaryMargin: const EdgeInsets.all(100), // 增加拖动区域
          minScale: 0.5,  // 设置最小缩放比例
          maxScale: 5.0,  // 设置最大缩放比例
          child: CustomPaint(
            size: const Size(1440, 960), // 设置固定画布大小
            painter: PipelinePainter(pipelineData),
          ),
        ),
      ),
    );
  }

  // 获取 TransformationController，确保画布居中
  TransformationController _getTransformationController(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    const canvasSize = Size(1440, 960); // 固定的画布尺寸

    // 计算缩放比例和偏移量
    double scaleX = screenSize.width / canvasSize.width;
    double scaleY = screenSize.height / canvasSize.height;
    double scale = scaleX < scaleY ? scaleX : scaleY;

    // 计算偏移量，使得画布居中
    double offsetX = (screenSize.width - canvasSize.width * scale) / 2;
    double offsetY = (screenSize.height - canvasSize.height * scale) / 2;

    final controller = TransformationController();
    controller.value = Matrix4.identity()
      ..translate(offsetX, offsetY)
      ..scale(scale, scale);

    return controller;
  }

}

class PipelinePainter extends CustomPainter {
  final List<Map<String, List<int>>> pipelineData;

  PipelinePainter(this.pipelineData);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 8
      ..style = PaintingStyle.stroke;

    final path = Path();

    // 绘制管道路径，保持相对固定尺寸
    for (var segment in pipelineData) {
      final start = segment['start']!;
      final end = segment['end']!;
      path.moveTo(start[0].toDouble(), start[1].toDouble());
      path.lineTo(end[0].toDouble(), end[1].toDouble());
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

void main() {
  js.context.callMethod('checkOrientation');  // 调用JS函数来检测屏幕方向
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DynamicPipeline(
      pipelineData: const [
        {"start": [310, 620], "end": [310, 500]},
        {"start": [310, 500], "end": [400, 500]},
        {"start": [400, 500], "end": [400, 265]},
        {"start": [400, 265], "end": [550, 265]},
      ],
    ),
  ));
}