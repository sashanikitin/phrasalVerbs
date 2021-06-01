import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'Settings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        ExtractArgumentsScreen.routeName: (context) => ExtractArgumentsScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == PassArgumentsScreen.routeName) {
          final args = settings.arguments as ScreenArguments;
          return MaterialPageRoute(
            builder: (context) {
              return PassArgumentsScreen(
                title: args.title,
                message: args.message,
              );
            },
          );
        }
        //assert(false, 'Need to implement ${settings.name}');
        return null;
      },
      title: 'Navigation with Arguments',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AutoSizeText('Phrasal Verbs',
                style: TextStyle(fontSize: 40),
                minFontSize: 10,
                stepGranularity: 10,
                maxLines: 4,
                overflow: TextOverflow.ellipsis),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
            ),
            SizedBox(
                width: 400,
                height: 100,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      ExtractArgumentsScreen.routeName,
                      arguments: ScreenArguments(
                        'Start',
                        'This message is extracted in the build method.',
                      ),
                    );
                  },
                  child: AutoSizeText('Start',
                      style: TextStyle(fontSize: 40),
                      minFontSize: 10,
                      stepGranularity: 10,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis),
                )),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
            ),
            SizedBox(
                width: 400,
                height: 100,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      PassArgumentsScreen.routeName,
                      arguments: ScreenArguments(
                        'Vocabulary',
                        'This message is extracted in the onGenerateRoute function.',
                      ),
                    );
                  },
                  child: AutoSizeText('Vocabulary',
                      style: TextStyle(fontSize: 40),
                      minFontSize: 10,
                      stepGranularity: 10,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis),
                )),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
            ),
            SizedBox(
                width: 400,
                height: 100,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      PassArgumentsScreen.routeName,
                      arguments: ScreenArguments(
                        'Settigs',
                        'This message is extracted in the onGenerateRoute function.',
                      ),
                    );
                  },
                  child: AutoSizeText('Settigs',
                      style: TextStyle(fontSize: 40),
                      minFontSize: 10,
                      stepGranularity: 10,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis),
                )),
          ],
        ),
      ),
    );
  }
}

class ExtractArgumentsScreen extends StatelessWidget {
  static const routeName = '/extractArguments';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Center(
        child: Text(args.message),
      ),
    );
  }
}


