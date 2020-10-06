/// Flutter code sample for Form

// This example shows a [Form] with one [TextFormField] to enter an email
// address and an [ElevatedButton] to submit the form. A [GlobalKey] is used here
// to identify the [Form] and validate input.
//
// ![](https://flutter.github.io/assets-for-api-docs/assets/widgets/form.png)

import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Login';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: Signup(),
      ),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class Signup extends StatefulWidget {
  Signup({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign in Form'),
      ),
      body: Form(
        child: Scrollbar(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                ...[
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Your Fullname',
                      labelText: 'Fullname',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter fullname';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      // formData.email = value;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Your email address',
                      labelText: 'Email',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter email';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      // formData.email = value;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Password',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter password';
                      }
                      return null;
                    },
                    obscureText: true,
                    onChanged: (value) {
                      // formData.password = value;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Re-enter Password',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter password';
                      }
                      return null;
                    },
                    obscureText: true,
                    onChanged: (value) {
                      // formData.password = value;
                    },
                  ),
                  RaisedButton(
                    onPressed: () {
                      // Validate returns true if the form is valid, otherwise false.
                      if (_formKey.currentState.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.

                        Scaffold.of(context).showSnackBar(
                            SnackBar(content: Text('Processing Data')));
                      }
                    },
                    child: Text('Signup'),
                  ),

                  //       FlatButton(
                  //       child: Text('Sign in'),
                  //   onPressed: () async {
                  //     // Use a JSON encoded string to send
                  //     var result = await widget.httpClient.post(
                  //         'https://example.com/signin',
                  //         body: json.encode(formData.toJson()),
                  //         headers: {'content-type': 'application/json'});
                  //
                  //     if (result.statusCode == 200) {
                  //       _showDialog('Succesfully signed in.');
                  //     } else if (result.statusCode == 401) {
                  //       _showDialog('Unable to sign in.');
                  //     } else {
                  //       _showDialog('Something went wrong. Please try again.');
                  //     }
                  //   },
                  // ),
                ].expand(
                  (widget) => [
                    widget,
                    SizedBox(
                      height: 24,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
