import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:heroicons/heroicons.dart';
import 'package:portfolio/constants/index.dart';
import 'package:portfolio/utils/general.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8.0,
              offset: const Offset(0, 4),
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue.shade300,
              Colors.blue.shade600,
            ],
          ),
        ),
        width: isDesktopDevice(context)
            ? MediaQuery.of(context).size.width * 0.5
            : MediaQuery.of(context).size.width * 0.8,
        constraints: const BoxConstraints(minWidth: 320),
        padding: const EdgeInsets.symmetric(horizontal: gap, vertical: gap),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/foto-perfil.jpg'),
            ),
            const SizedBox(width: gap),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Pedro Teles',
                      style: Theme.of(context).textTheme.displayLarge),
                  Text(
                    'Product Manager | React.js Developer | Flutter Developer',
                    style: Theme.of(context).textTheme.displaySmall,
                    textWidthBasis: TextWidthBasis.parent,
                  ),
                  const Row(
                    children: [
                      Text('botões'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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
