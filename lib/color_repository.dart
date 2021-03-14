import 'dart:convert';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter_app/models/ColourProperties.dart';

class ColorRepository {
  Future<List<ColourProperties>> getColors() async {
    try {
      String query = '''
      query MyQuery {
  syncColourProperties {
    items {
      id
      blue
      red
      green
    }
  }
}
''';

      final operation = Amplify.API.query(request: GraphQLRequest<String>(document: query));
      final response = await operation.response;
      final jsonResponse = json.decode(response.data);
      print(jsonResponse);
      final colors = await Amplify.DataStore.query(ColourProperties.classType);

      return colors;
    } catch (e) {
      throw e;
    }
  }

  Future<void> createColor(int red, int green, int blue) async {
    final color = ColourProperties(red: red, green: green, blue: blue);
    try {
      await Amplify.DataStore.save(color);
    } catch (e) {
      throw e;
    }
  }

  Stream observeColor() {
    return Amplify.DataStore.observe(ColourProperties.classType);
  }
}
