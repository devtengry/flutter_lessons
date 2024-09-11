import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
      ),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 200,
            child: Text('A' * 500),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text('B' * 500),
          ),
          Container(
            constraints: const BoxConstraints(
              maxHeight: 200,
              maxWidth: 200,
              minHeight: 200,
              minWidth: 200,
            ),
            child: Text(
              'aa' * 100,
              maxLines: 2,
            ),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: ProjectUtilty.boxDecoration,
          )
        ],
      ),
    );
  }
}

class ProjectUtilty {
  static BoxDecoration boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: const LinearGradient(
        colors: [Colors.green, Colors.black],
      ),
      boxShadow: const [
        BoxShadow(color: Colors.green, offset: Offset(0.1, 1), blurRadius: 12),
      ],
      border: Border.all(width: 10, color: Colors.black));
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(colors: [Colors.black, Colors.red]),
          boxShadow: const [BoxShadow(color: Colors.black)],
          border: Border.all(width: 10, color: Colors.amber),
        );
}
