// import 'package:flutter/material.dart';
// import 'package:pishon/componensts/product_card.dart';
// // import 'package:video_player/video_player.dart';
// // import 'package:chewie/chewie.dart';
// import 'package:pishon/models/product_model.dart';
//
// class VideoPlayerPage extends StatefulWidget {
//   const VideoPlayerPage(
//       {Key? key, required this.productLink, required this.productLists})
//       : super(key: key);
//   final int productLink;
//   final List<Product> productLists;
//
//   @override
//   State<VideoPlayerPage> createState() => _VideoPlayerPageState();
// }
//
// class _VideoPlayerPageState extends State<VideoPlayerPage> {
//   //Using Chewie
//   late VideoPlayerController videoPlayerController;
//   late ChewieController chewieController;
//   @override
//   void initState() {
//     videoPlayerController = VideoPlayerController.network(
//         widget.productLists[widget.productLink].productVideoLink);
//     chewieController = ChewieController(
//         videoPlayerController: videoPlayerController,
//         aspectRatio: 16 / 9,
//         autoPlay: true,
//         looping: false);
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     videoPlayerController.dispose();
//     chewieController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.productLists[widget.productLink].productName),
//       ),
//       body: SafeArea(
//         child: Column(
//           children: [
//             AspectRatio(
//               aspectRatio: 16 / 9,
//               child: Chewie(
//                 controller: chewieController,
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
//                 color: Colors.green,
//                 child: GridView.builder(
//                     itemCount: widget.productLists.length,
//                     gridDelegate:
//                         const SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 2,
//                       crossAxisSpacing: 4.0,
//                       mainAxisSpacing: 4.0,
//                     ),
//                     itemBuilder: (BuildContext context, int index) {
//                       return Container(
//                           color: Colors.lightBlueAccent,
//                           child: Text(widget.productLists[index].productName));
//                     }),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// // ListView.builder(
// // itemCount: widget.productLists.length,
// // itemBuilder: (BuildContext context, int index) {
// // return Text(widget.productLists[index].productName);
// // }),
//
// // Using only video_player
// // String _videoDuration(Duration duration) {
// //   String twoDigits(int n) => n.toString().padLeft(2, '0');
// //   final hours = twoDigits(duration.inHours);
// //   final minutes = twoDigits(duration.inMinutes.remainder(60));
// //   final seconds = twoDigits(duration.inSeconds.remainder(60));
// //   return [
// //     if (duration.inHours > 0) hours,
// //     minutes,
// //     seconds,
// //   ].join(':');
// // }
// //
// // late VideoPlayerController _controller;
// // @override
// // void initState() {
// //   super.initState();
// //   _controller = VideoPlayerController.asset(widget.videoLink);
// //   _controller.addListener(() {
// //     setState(() {});
// //   });
// //   _controller.setLooping(true);
// //   _controller.initialize().then((value) => setState(() {}));
// //   _controller.play();
// // }
// // Column(
// // children: [
// // Stack(
// // alignment: Alignment.center,
// // children: [
// // Center(
// // child: AspectRatio(
// // aspectRatio: _controller.value.aspectRatio,
// // child: VideoPlayer(_controller),
// // ),
// // ),
// // Visibility(
// // child: Positioned(
// // bottom: 10,
// // left: 10,
// // child: ValueListenableBuilder(
// // valueListenable: _controller,
// // builder: (context, VideoPlayerValue value, child) {
// // return Text(
// // _videoDuration(value.position),
// // style: const TextStyle(
// // color: Colors.white, fontSize: 12),
// // );
// // },
// // ),
// // ),
// // ),
// // Visibility(
// // visible: true,
// // child: Positioned(
// // bottom: 15,
// // right: 0,
// // left: 0,
// // child: Padding(
// // padding: const EdgeInsets.only(left: 50, right: 100),
// // child: VideoProgressIndicator(_controller,
// // allowScrubbing: true),
// // ),
// // ),
// // ),
// // ],
// // ),
// // ],
// // ),
