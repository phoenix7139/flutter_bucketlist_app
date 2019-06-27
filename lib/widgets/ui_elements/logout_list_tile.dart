import 'package:flutter/material.dart';

import 'package:scoped_model/scoped_model.dart';

import '../../scoped-models/main_scoped_model.dart';

class LogoutListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant(
            builder: (BuildContext context, Widget child, MainModel model) {
              return ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('LOGOUT'),
                onTap: () {
                  model.logout();
                  // Navigator.of(context).pushReplacementNamed('/');
                },
              );
            },
          );
  }
}