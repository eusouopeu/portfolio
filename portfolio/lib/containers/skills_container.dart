import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:portfolio/constants/index.dart';
import 'package:portfolio/containers/about_container.dart';
import 'package:portfolio/utils/general.dart';
import '../data/skills_data.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> keyList = skillsData.keys.toList();

    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(vertical: 32),
      padding: EdgeInsets.symmetric(
        horizontal: isDesktopDevice(context) ? gap * 6 : gap * 2,
        vertical: gap * 4,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Skills',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16.0),
          Center(
            child: Wrap(
              runSpacing: gap * 2,
              children: keyList
                  .map(
                    (key) => SkillCard(
                      title: skillsData[key]!.first,
                      skillsData: skillsData[key]!,
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  const SkillCard({
    super.key,
    required this.title,
    required this.skillsData,
  });

  final String title;
  final List<String> skillsData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isDesktopDevice(context) ? 240 : double.infinity,
      margin: const EdgeInsets.only(right: 16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.blue.shade300,
            Colors.blue.shade500,
          ],
        ),
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8.0,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Expanded(
        child: Column(
          
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(height: 8.0),
            Column(
              children: skillsData
                  .map(
                    (skill) => Row(
                      children: [
                        const HeroIcon(
                          HeroIcons.checkBadge,
                          size: 16.0,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 8.0),
                        Text(
                          skill,
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
