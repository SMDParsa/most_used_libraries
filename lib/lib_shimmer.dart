import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmberApp extends StatefulWidget {
  const ShimmberApp({super.key});

  @override
  State<ShimmberApp> createState() => _ShimmberAppState();
}

class _ShimmberAppState extends State<ShimmberApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Shimmer.fromColors(
          baseColor: Colors.blue,
          highlightColor: Colors.yellow,
          child: Text(
            'Shimmer Example',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(children: [
          Shimmer.fromColors(
            baseColor: Colors.yellow,
            highlightColor: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(height: 16.0),
                CircleAvatar(),
                SizedBox(height: 16.0),
              ],
            ),
          ),
          Shimmer.fromColors(
            baseColor: Colors.blue,
            highlightColor: Colors.red,
            child: Text(
              'This text is shimmering...',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40.0,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
