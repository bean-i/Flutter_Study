import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool showTitle = true;
  int counter = 0;

  void onClicked() {
    setState(() {
      counter = counter + 1;
    });
  }

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 143, 229, 163),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  showTitle ? const ClickMe() : const Text('Nothing'),
                  IconButton(
                    iconSize: 40,
                    onPressed: onClicked,
                    icon: const Icon(
                      Icons.add_box_outlined,
                    ),
                  ),
                ],
              ),
              Text(
                '$counter',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              IconButton(
                onPressed: toggleTitle,
                icon: const Icon(Icons.remove_red_eye),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ClickMe extends StatefulWidget {
  const ClickMe({
    super.key,
  });

  @override
  State<ClickMe> createState() => _ClickMeState();
}

class _ClickMeState extends State<ClickMe> {
  @override
  void initState() {
    super.initState();
    print('initState!');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose!');
  }

  @override
  Widget build(BuildContext context) {
    print('build!');
    return const Text(
      'Click Me!',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}

// class MyLargeTitle extends StatefulWidget {
//   const MyLargeTitle({
//     super.key,
//   });

//   @override
//   State<MyLargeTitle> createState() => _MyLargeTitleState();
// }

// class _MyLargeTitleState extends State<MyLargeTitle> {
//   int count = 0;

//   @override
//   void initState() {
//     super.initState();
//     print('initState!');
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     print('dispose!');
//   }

//   @override
//   Widget build(BuildContext context) {
//     print('build!');
//     return Text(
//       'My Large Title',
//       style: TextStyle(
//         fontSize: 30,
//         color: Theme.of(context).textTheme.titleLarge?.color,
//       ),
//     );
//   }
// }
