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
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the ColourProperties type in your schema. */
@immutable
class ColourProperties extends Model {
  static const classType = const ColourPropertiesType();
  final String id;
  final int red;
  final int green;
  final int blue;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const ColourProperties._internal(
      {@required this.id, this.red, this.green, this.blue});

  factory ColourProperties({String id, int red, int green, int blue}) {
    return ColourProperties._internal(
        id: id == null ? UUID.getUUID() : id,
        red: red,
        green: green,
        blue: blue);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ColourProperties &&
        id == other.id &&
        red == other.red &&
        green == other.green &&
        blue == other.blue;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("ColourProperties {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("red=" + (red != null ? red.toString() : "null") + ", ");
    buffer.write("green=" + (green != null ? green.toString() : "null") + ", ");
    buffer.write("blue=" + (blue != null ? blue.toString() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  ColourProperties copyWith({String id, int red, int green, int blue}) {
    return ColourProperties(
        id: id ?? this.id,
        red: red ?? this.red,
        green: green ?? this.green,
        blue: blue ?? this.blue);
  }

  ColourProperties.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        red = json['red'],
        green = json['green'],
        blue = json['blue'];

  Map<String, dynamic> toJson() =>
      {'id': id, 'red': red, 'green': green, 'blue': blue};

  static final QueryField ID = QueryField(fieldName: "colourProperties.id");
  static final QueryField RED = QueryField(fieldName: "red");
  static final QueryField GREEN = QueryField(fieldName: "green");
  static final QueryField BLUE = QueryField(fieldName: "blue");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ColourProperties";
    modelSchemaDefinition.pluralName = "ColourProperties";

    modelSchemaDefinition.authRules = [
      AuthRule(authStrategy: AuthStrategy.PUBLIC, operations: [
        ModelOperation.CREATE,
        ModelOperation.UPDATE,
        ModelOperation.DELETE,
        ModelOperation.READ
      ])
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ColourProperties.RED,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ColourProperties.GREEN,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ColourProperties.BLUE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));
  });
}

class ColourPropertiesType extends ModelType<ColourProperties> {
  const ColourPropertiesType();

  @override
  ColourProperties fromJson(Map<String, dynamic> jsonData) {
    return ColourProperties.fromJson(jsonData);
  }
}
