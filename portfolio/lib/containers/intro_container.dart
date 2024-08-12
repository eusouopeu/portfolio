import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:heroicons/heroicons.dart';
import 'package:path_provider/path_provider.dart';
import 'package:portfolio/components/glassmorphism.dart';
import '../components/glassmorphism.dart';



class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.symmetric(
        vertical: 24.0,
      ),
      clipBehavior: Clip.antiAlias,
      child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 24.0,
          ),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0x1C2195F3),
                Color(0x3C2195F3),
              ],
            ),
          ),
          width: double.infinity,
          child: const Expanded(
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/produto_teclado.png'),
                ),
                SizedBox(width: 24.0),
                CardText(
                  title: 'Pedro Teles',
                  content: 'Product Manager | Front-End Developer',
                ),
              ],
            ),
          )),
    );
  }
}

class CardText extends StatelessWidget {
  const CardText({
    super.key,
    required this.title,
    this.content,
  });

  final String title;
  final String? content;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(height: 4.0),
        Text(
          content ?? '',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 12.0),
        const ButtonsAndLinks(),
      ],
    );
  }
}

class ButtonsAndLinks extends StatelessWidget {
  const ButtonsAndLinks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FilledButton(
          onPressed: () {
            //download CV
          },
          style: ButtonStyle(
            elevation: WidgetStateProperty.all(2.5),
            backgroundColor: WidgetStateProperty.all(Colors.blue.shade700),
            padding: WidgetStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0)),
          ),
          child: Row(
            children: [
              Text('Download my CV',
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: Colors.white)),
              const SizedBox(width: 8.0),
              const HeroIcon(
                HeroIcons.arrowDown,
                color: Colors.white,
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 8.0,
        ),
        IconButton(
          onPressed: () {
            //view CV
          },
          // icon: const Image(
          //   image: AssetImage('assets/GitHub'),
          // ),
          icon: const HeroIcon(HeroIcons.academicCap),
        ),
        const SizedBox(
          width: 8.0,
        ),
        IconButton(
          onPressed: () {
            //view CV
          },
          // icon: const Image(
          //   image: AssetImage('assets/LinkedIn'),
          // ),
          icon: const HeroIcon(HeroIcons.lightBulb),
        ),
      ],
    );
  }
}
