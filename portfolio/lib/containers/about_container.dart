import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:heroicons/heroicons.dart';
import 'package:portfolio/components/glassmorphism.dart';
import 'package:portfolio/constants/index.dart';
import '../components/glassmorphism.dart';
import '../utils/constants.dart';
import '../components/certificate.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Sobre mim', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 24.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 200,
                constraints: const BoxConstraints(maxWidth: 600),
                padding: const EdgeInsets.all(2),
                child: const Text(
                  about,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CertificateCard(
                        title: 'Product Management',
                        date: '2024',
                        institution: 'Cubos Academy',
                        color1: Colors.blue.shade300,
                        color2: Colors.blue.shade700,
                        textColor: Colors.white,
                      ),
                      const SizedBox(height: 20.0),
                      const CertificateCard(
                        title: 'Figma',
                        date: '2024',
                        institution: 'Cubos Academy',
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const CertificateCard(
                        title: 'Node.js',
                        date: '2024',
                        institution: 'Cubos Academy',
                      ),
                      const SizedBox(height: 20.0),
                      CertificateCard(
                        title: 'React',
                        date: '2024',
                        institution: 'Cubos Academy',
                        color1: Colors.blue.shade300,
                        color2: Colors.blue.shade700,
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
