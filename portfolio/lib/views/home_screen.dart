import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:heroicons/heroicons.dart';
import 'package:portfolio/utils/general.dart';
import '../containers/project_container.dart';
import '../containers/intro_container.dart';
import '../containers/about_container.dart';
import '../containers/skills_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(children: const [
        Intro(),
        About(),
        Skills(),
        ProjectContainer(),
      ]),
    );
  }
}
