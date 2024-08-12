import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class CertificateCard extends StatelessWidget {
  const CertificateCard({
    super.key,
    required this.title,
    required this.date,
    required this.institution,
    this.color1,
    this.color2,
    this.textColor,
  });

  final String title;
  final String date;
  final String institution;
  final dynamic color1;
  final dynamic color2;
  final dynamic textColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      onHover: (value) => {
        //
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              color1 ?? Colors.white,
              color2 ?? Colors.blueGrey.shade200,
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
        padding: const EdgeInsets.all(16.0),
        width: 240,
        child: Column(
          children: [
            HeroIcon(
              HeroIcons.checkBadge,
              size: 32.0,
              color: textColor ?? Colors.blue.shade700,
            ),
            const SizedBox(height: 8.0),
            Text(title,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(color: textColor ?? Colors.blue.shade700)),
            const SizedBox(height: 8.0),
            Text(date,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: textColor ?? Colors.blue.shade700)),
            Text(institution,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: textColor ?? Colors.blue.shade700)),
          ],
        ),
      ),
    );
  }
}
//