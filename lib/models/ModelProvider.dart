/*
* Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// ignore_for_file: public_member_api_docs

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'ButtonProperties.dart';
import 'CatalogCategory.dart';
import 'CategoryTheme.dart';
import 'ColourProperties.dart';
import 'NavigationalCatalog.dart';
import 'Test.dart';

export 'ButtonProperties.dart';
export 'CatalogCategory.dart';
export 'CategoryTheme.dart';
export 'ColourProperties.dart';
export 'NavigationalCatalog.dart';
export 'Test.dart';

class ModelProvider implements ModelProviderInterface {
  @override
  String version = "a0a7bc899d7a7f0f6353601159e844d1";
  @override
  List<ModelSchema> modelSchemas = [
    ButtonProperties.schema,
    CatalogCategory.schema,
    CategoryTheme.schema,
    ColourProperties.schema,
    NavigationalCatalog.schema,
    Test.schema
  ];
  static final ModelProvider _instance = ModelProvider();

  static ModelProvider get instance => _instance;

  ModelType getModelTypeByModelName(String modelName) {
    switch (modelName) {
      case "ButtonProperties":
        {
          return ButtonProperties.classType;
        }
        break;
      case "CatalogCategory":
        {
          return CatalogCategory.classType;
        }
        break;
      case "CategoryTheme":
        {
          return CategoryTheme.classType;
        }
        break;
      case "ColourProperties":
        {
          return ColourProperties.classType;
        }
        break;
      case "NavigationalCatalog":
        {
          return NavigationalCatalog.classType;
        }
        break;
      case "Test":
        {
          return Test.classType;
        }
        break;
      default:
        {
          throw Exception(
              "Failed to find model in model provider for model name: " +
                  modelName);
        }
    }
  }
}
