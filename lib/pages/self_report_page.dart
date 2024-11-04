import 'package:flutter/material.dart';
import 'package:hackfest2024_naara/themes/colors.dart';

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  TextEditingController _textFieldController = TextEditingController();
  TextEditingController _messageFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Self Report'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Subject',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _textFieldController,
              decoration: InputDecoration(
                hintText: 'Enter subject',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Message',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            TextField(
              controller: _messageFieldController,
              decoration: InputDecoration(
                hintText: 'Enter Message',
                border: OutlineInputBorder(),
              ),
            ),
            // style: TextStyle(fontSize: 30),

            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Access the text value using _textFieldController.text
                String enteredSubject = _textFieldController.text;
                String enteredMessage = _messageFieldController.text;
                // You can handle the entered text as needed
                print('Entered Subject: $enteredSubject');
                print('Entered Message: $enteredMessage');
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: primary,
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Submit',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _textFieldController.dispose();
    super.dispose();
  }
}
