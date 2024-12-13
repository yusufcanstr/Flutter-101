import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  final key = GlobalKey();

  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent.shade100,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text("Text Field Learn"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
                maxLength: 22,
                buildCounter: (BuildContext context, {int? currentLength, bool? isFocused, int? maxLength}) {
                  return _animationContainer(currentLength);
                },
                keyboardType: TextInputType.emailAddress,
                autofillHints: const [AutofillHints.email],
                inputFormatters: [TextProjectInputFormmater()._formater],
                textInputAction: TextInputAction.next,
                focusNode: focusNodeTextFieldOne,
                decoration: _InputDecarotor().emailInput),
            TextField(
              focusNode: focusNodeTextFieldTwo,
              minLines: 2,
              maxLines: 4,
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer _animationContainer(int? currentLength) {
    return AnimatedContainer(
      key: key,
      duration: const Duration(milliseconds: 1),
      height: 20,
      width: 10.0 * (currentLength ?? 0),
      color: Colors.blue,
    );
  }
}

class TextProjectInputFormmater {
  final _formater = TextInputFormatter.withFunction((oldValue, newValue) {
    if (newValue.text == "a") {
      return oldValue;
    }
    return newValue;
  });
}

class _InputDecarotor {
  final emailInput = const InputDecoration(
    prefixIcon: Icon(Icons.mail),
    border: OutlineInputBorder(),
    hintText: "Email adresini giriniz !",
    labelText: "Email",
    fillColor: Colors.white54,
    filled: true,
  );
}
