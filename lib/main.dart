import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/color_cubit.dart';
import 'package:flutter_app/color_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'amplifyconfiguration.dart';
import 'loading_view.dart';
import 'models/ModelProvider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _amplifyConfigured = false;

  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BlocProvider(
            create: (context) => ColorCubit()..getColors()..observeColor(),
            child: ColorsView()));
  }

  void _configureAmplify() async {
    try {
      await Future.wait([
        Amplify.addPlugin(AmplifyDataStore(modelProvider: ModelProvider.instance)),
        Amplify.addPlugin(AmplifyAPI()),Amplify.addPlugin(AmplifyAuthCognito())
      ]);
      await Amplify.configure(amplifyconfig);
      setState(() {
        _amplifyConfigured = true;
      });
    } catch (e) {
      print(e);
    }

  }
}
