import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:portfolio/styles/typography.dart';
import 'package:portfolio/utils/theme_provider.dart';
import 'package:provider/provider.dart';
import 'views/home_screen.dart';
import 'views/projects_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      title: 'Portfolio',
      //
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Nunito',
        textTheme: typography,
      ),
      //
      darkTheme: ThemeData(
        // Tema escuro
        brightness: Brightness.dark,
        textTheme: typography,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      themeMode: themeProvider.themeMode,
      home: const HeroIconTheme(
        style: HeroIconStyle.solid,
        child: MyHomePage(title: 'Pedro Teles'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _railSelectedIndex = 0;
  bool _isRailExtended = false;

  void railChangeDestination(int index) {
    setState(() {
      _railSelectedIndex = index;
    });
  }

  void toggleRail() {
    setState(() {
      _isRailExtended = !_isRailExtended;
    });
  }

  final List<Widget> _screens = const [
    HomePage(),
    ProjectsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: true);

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
          background: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.blue.shade200,
                  Colors.blue.shade500,
                ],
              ),
              borderRadius: BorderRadius.circular(32.0),
            ),
          ),
        ),
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            widget.title,
            style: const TextStyle(
              fontFamily: 'Nunito',
              color: Colors.white,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextButton(
              child: Row(
                children: [
                  const Row(
                    children: [
                      HeroIcon(
                        HeroIcons.codeBracket,
                        color: Colors.white,
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        'Projetos',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 16.0),
                  Row(
                    children: [
                      const HeroIcon(
                        HeroIcons.sun,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 2.0),
                      Switch(
                        value: themeProvider.themeMode == ThemeMode.dark,
                        onChanged: (val) {
                          themeProvider.toggleTheme(val);
                        },
                      ),
                    ],
                  ),
                ],
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
      //
      body: Expanded(
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: _screens[_railSelectedIndex],
          ),
        ),
      ),
    );
  }
}
