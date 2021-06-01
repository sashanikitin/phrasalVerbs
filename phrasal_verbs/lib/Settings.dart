



import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PassArgumentsScreen extends StatelessWidget {
  static const routeName = '/passArguments';

  final String title;
  final String message;

  const PassArgumentsScreen({
    Key? key,
    required this.title,
    required this.message,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return new Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      backgroundColor: Colors.white,
      body: new Container(
          padding: const EdgeInsets.all(40.0),

          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(labelText: "Quantity of cycles of asking words"),
                keyboardType: TextInputType.number,
                maxLength: 1,
                onChanged: (text) {
                  print('First text field: $text');
                },
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ], // Only numbers can be entered
              ),
              new TextField(
                decoration: new InputDecoration(labelText: "Quantity of cycle of asking meaning"),
                keyboardType: TextInputType.number,
                maxLength: 1,

                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ], // Only numbers can be entered
              ),
              new TextField(
                decoration: new InputDecoration(labelText: "Quantity of cycle of typing words"),
                keyboardType: TextInputType.number,
                maxLength: 1,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ], // Only numbers can be entered
              ),new TextField(
                decoration: new InputDecoration(labelText: "Number of words in a lesson"),
                keyboardType: TextInputType.number,
                maxLength: 1,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ], // Only numbers can be entered
              ),
            ],
          )),
    );
  }


}













  /*{
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(message),
      ),
    );
  }
}
*/
class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}