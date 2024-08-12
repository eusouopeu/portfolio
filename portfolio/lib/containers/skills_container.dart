import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import '../data/skills_data.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> keyList = skillsData.keys.toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Skills', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 24.0),
        Container(
          constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width, maxHeight: 200),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              childAspectRatio: 2.5,
            ),
            itemCount: skillsData.length,
            itemBuilder: (context, index) {
              String key = skillsData.keys.elementAt(index);
              List<String> skills = skillsData[key]!;

              return GridTile(
                header: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      key,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.blue.shade400,
                        Colors.blue.shade800,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black!,
                        offset: const Offset(4.0, 4.0),
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(top: 24.0),
                    child: GridView.count(
                      crossAxisCount: 2, // Divide each list into two columns
                      padding: const EdgeInsets.all(8.0),
                      mainAxisSpacing: 4.0, // Vertical spacing between items
                      crossAxisSpacing: 4.0, // Horizontal spacing between items
                      childAspectRatio: 4,
                      children: List.generate(
                        skills.length,
                        (idx) => Row(
                          children: [
                            const HeroIcon(HeroIcons.codeBracket),
                            const SizedBox(width: 8.0),
                            Text(
                              skills[idx],
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        // ListTile(
        //   title: const Text('Design'),
        //   subtitle: Column(
        //     children: [
        //       Column(
        //         children: skillsList(backEndSkills),
        //       ),
        //     ],
        //   ),
        // ),
        // ListTile(
        //   title: const Text('Design'),
        //   subtitle: Column(
        //     children: [
        //       Column(
        //         children: skillsList(mobileSkills),
        //       ),
        //     ],
        //   ),
        // )
      ],
    );
  }

  List<Row> skillsList(dynamic list) {
    return List.generate(
      list.length,
      (index) {
        return Row(
          children: [
            const HeroIcon(HeroIcons.codeBracket),
            const SizedBox(width: 16.0),
            Text(list[index]),
          ],
        );
      },
    );
  }
}
//