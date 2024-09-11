import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({super.key, this.userName});
  final String name = 'Ömer';
  final String? userName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Good evening $name ${name.length}',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: ProjectStyles.welcomeStyle,
          ),
            Text(
            'Good evening $name ${name.length}',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: ProjectStyles.welcomeStyle,
          ),
            Text(
            'Good evening $name ${name.length}',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: ProjectColors.welcomeColor),
          ),
          Text(userName ?? ''),
        ],
      ),
    ));
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
          wordSpacing: 2,
          decoration: TextDecoration.underline,
          fontStyle: FontStyle.italic,
          color: Color.fromARGB(255, 255, 255, 255),
          fontSize: 16,
          fontWeight: FontWeight.w500,
        );
}

class ProjectColors {
  static Color welcomeColor = const Color.fromARGB(255, 255, 255, 255);
}