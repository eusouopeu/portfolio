import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:portfolio/widgets/glassmorphism.dart';
import 'package:portfolio/widgets/project_card.dart';
import '../widgets/glassmorphism.dart';

class ProjectContainer extends StatelessWidget {
  const ProjectContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Projects', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 24.0),
          const Row(
            children: [
              ProjectCard(
                title: 'CineGlota',
                description: 'lorem lorem lorem lorem lorem lorem lorem lorem',
              ),
              ProjectCard(
                title: 'PMatch',
                description: 'lorem lorem lorem lorem lorem lorem lorem lorem',
              ),
              ProjectCard(
                title: 'E-commerce',
                description: 'lorem lorem lorem lorem lorem lorem lorem lorem',
              ),
              ProjectCard(
                title: 'RU fast',
                description: 'lorem lorem lorem lorem lorem lorem lorem lorem',
              ),
              ProjectCard(
                title: 'UFBA em Dados',
                description: 'lorem lorem lorem lorem lorem lorem lorem lorem',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
