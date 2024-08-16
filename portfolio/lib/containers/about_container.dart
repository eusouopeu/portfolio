import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/constants/index.dart';
import 'package:portfolio/utils/general.dart';
import '../widgets/certificate.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 12.0,
            offset: const Offset(0, 8),
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 12.0,
            offset: const Offset(0, -8),
          ),
        ],
      ),
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(vertical: 32),
      padding: EdgeInsets.symmetric(
        horizontal: isDesktopDevice(context) ? gap * 6 : gap * 2,
        vertical: gap * 4,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Sobre mim', style: Theme.of(context).textTheme.displayMedium),
          const SizedBox(height: 24.0),
          RowOrWrap(
            children: [
              const Expanded(
                child: const Text(
                  about,
                  textAlign: TextAlign.justify,
                ),
              ),

              const SizedBox(
                width: 32,
                height: 32,
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 550,
                ),
                child: Wrap(
                  runSpacing: 20,
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
                    const SizedBox(height: 20.0),
                    const CertificateCard(
                      title: 'Figma',
                      date: '2024',
                      institution: 'Cubos Academy',
                      url: '/files/CertificadoFigma.pdf',
                      fileName: 'CertificadoFigma.pdf',
                    ),
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
              ),
              // Column(
              //   children: [
              // CertificateCard(
              //   title: 'Product Management',
              //   date: '2024',
              //   institution: 'Cubos Academy',
              //   color1: Colors.blue.shade300,
              //   color2: Colors.blue.shade700,
              //   textColor: Colors.white,
              // ),
              //   ],
              // ),
            ],
          ),
        ],
      ),
    );
  }
}

class RowOrWrap extends StatelessWidget {
  const RowOrWrap({
    super.key,
    required this.children,
    this.width,
  });

  final List<Widget> children;
  final dynamic width;

  @override
  Widget build(BuildContext context) {
    if (isDesktopDevice(context)) {
      return SizedBox(
        width: width ?? MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        ),
      );
    } else {
      return Wrap(
        children: children,
      );
    }
  }
}

class ColOrWrap extends StatelessWidget {
  const ColOrWrap({
    super.key,
    required this.children,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    if (isDesktopDevice(context)) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: children,
      );
    } else {
      return Wrap(
        children: children,
      );
    }
  }
}
