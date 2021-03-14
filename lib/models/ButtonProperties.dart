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

import 'ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the ButtonProperties type in your schema. */
@immutable
class ButtonProperties extends Model {
  static const classType = const ButtonPropertiesType();
  final String id;
  final String text;
  final ColourProperties textColor;
  final ColourProperties color;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const ButtonProperties._internal(
      {@required this.id, this.text, this.textColor, this.color});

  factory ButtonProperties(
      {String id,
      String text,
      ColourProperties textColor,
      ColourProperties color}) {
    return ButtonProperties._internal(
        id: id == null ? UUID.getUUID() : id,
        text: text,
        textColor: textColor,
        color: color);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ButtonProperties &&
        id == other.id &&
        text == other.text &&
        textColor == other.textColor &&
        color == other.color;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("ButtonProperties {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("text=" + "$text" + ", ");
    buffer.write("textColor=" +
        (textColor != null ? textColor.toString() : "null") +
        ", ");
    buffer.write("color=" + (color != null ? color.toString() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  ButtonProperties copyWith(
      {String id,
      String text,
      ColourProperties textColor,
      ColourProperties color}) {
    return ButtonProperties(
        id: id ?? this.id,
        text: text ?? this.text,
        textColor: textColor ?? this.textColor,
        color: color ?? this.color);
  }

  ButtonProperties.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        text = json['text'],
        textColor = json['textColor'] != null
            ? ColourProperties.fromJson(
                new Map<String, dynamic>.from(json['textColor']))
            : null,
        color = json['color'] != null
            ? ColourProperties.fromJson(
                new Map<String, dynamic>.from(json['color']))
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'text': text,
        'textColor': textColor?.toJson(),
        'color': color?.toJson()
      };

  static final QueryField ID = QueryField(fieldName: "buttonProperties.id");
  static final QueryField TEXT = QueryField(fieldName: "text");
  static final QueryField TEXTCOLOR = QueryField(
      fieldName: "textColor",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (ColourProperties).toString()));
  static final QueryField COLOR = QueryField(
      fieldName: "color",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (ColourProperties).toString()));
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ButtonProperties";
    modelSchemaDefinition.pluralName = "ButtonProperties";

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
        key: ButtonProperties.TEXT,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: ButtonProperties.TEXTCOLOR,
        isRequired: false,
        targetName: "buttonPropertiesTextColorId",
        ofModelName: (ColourProperties).toString()));

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: ButtonProperties.COLOR,
        isRequired: false,
        targetName: "buttonPropertiesColorId",
        ofModelName: (ColourProperties).toString()));
  });
}

class ButtonPropertiesType extends ModelType<ButtonProperties> {
  const ButtonPropertiesType();

  @override
  ButtonProperties fromJson(Map<String, dynamic> jsonData) {
    return ButtonProperties.fromJson(jsonData);
  }
}
