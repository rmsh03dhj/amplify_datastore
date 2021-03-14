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

/** This is an auto generated class representing the CategoryTheme type in your schema. */
@immutable
class CategoryTheme extends Model {
  static const classType = const CategoryThemeType();
  final String id;
  final ColourProperties selectedColor;
  final ColourProperties unSelectedColor;
  final ColourProperties indicatorColor;
  final ColourProperties descriptionColor;
  final ColourProperties backgroundColor;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const CategoryTheme._internal(
      {@required this.id,
      this.selectedColor,
      this.unSelectedColor,
      this.indicatorColor,
      this.descriptionColor,
      this.backgroundColor});

  factory CategoryTheme(
      {String id,
      ColourProperties selectedColor,
      ColourProperties unSelectedColor,
      ColourProperties indicatorColor,
      ColourProperties descriptionColor,
      ColourProperties backgroundColor}) {
    return CategoryTheme._internal(
        id: id == null ? UUID.getUUID() : id,
        selectedColor: selectedColor,
        unSelectedColor: unSelectedColor,
        indicatorColor: indicatorColor,
        descriptionColor: descriptionColor,
        backgroundColor: backgroundColor);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryTheme &&
        id == other.id &&
        selectedColor == other.selectedColor &&
        unSelectedColor == other.unSelectedColor &&
        indicatorColor == other.indicatorColor &&
        descriptionColor == other.descriptionColor &&
        backgroundColor == other.backgroundColor;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("CategoryTheme {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("selectedColor=" +
        (selectedColor != null ? selectedColor.toString() : "null") +
        ", ");
    buffer.write("unSelectedColor=" +
        (unSelectedColor != null ? unSelectedColor.toString() : "null") +
        ", ");
    buffer.write("indicatorColor=" +
        (indicatorColor != null ? indicatorColor.toString() : "null") +
        ", ");
    buffer.write("descriptionColor=" +
        (descriptionColor != null ? descriptionColor.toString() : "null") +
        ", ");
    buffer.write("backgroundColor=" +
        (backgroundColor != null ? backgroundColor.toString() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  CategoryTheme copyWith(
      {String id,
      ColourProperties selectedColor,
      ColourProperties unSelectedColor,
      ColourProperties indicatorColor,
      ColourProperties descriptionColor,
      ColourProperties backgroundColor}) {
    return CategoryTheme(
        id: id ?? this.id,
        selectedColor: selectedColor ?? this.selectedColor,
        unSelectedColor: unSelectedColor ?? this.unSelectedColor,
        indicatorColor: indicatorColor ?? this.indicatorColor,
        descriptionColor: descriptionColor ?? this.descriptionColor,
        backgroundColor: backgroundColor ?? this.backgroundColor);
  }

  CategoryTheme.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        selectedColor = json['selectedColor'] != null
            ? ColourProperties.fromJson(
                new Map<String, dynamic>.from(json['selectedColor']))
            : null,
        unSelectedColor = json['unSelectedColor'] != null
            ? ColourProperties.fromJson(
                new Map<String, dynamic>.from(json['unSelectedColor']))
            : null,
        indicatorColor = json['indicatorColor'] != null
            ? ColourProperties.fromJson(
                new Map<String, dynamic>.from(json['indicatorColor']))
            : null,
        descriptionColor = json['descriptionColor'] != null
            ? ColourProperties.fromJson(
                new Map<String, dynamic>.from(json['descriptionColor']))
            : null,
        backgroundColor = json['backgroundColor'] != null
            ? ColourProperties.fromJson(
                new Map<String, dynamic>.from(json['backgroundColor']))
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'selectedColor': selectedColor?.toJson(),
        'unSelectedColor': unSelectedColor?.toJson(),
        'indicatorColor': indicatorColor?.toJson(),
        'descriptionColor': descriptionColor?.toJson(),
        'backgroundColor': backgroundColor?.toJson()
      };

  static final QueryField ID = QueryField(fieldName: "categoryTheme.id");
  static final QueryField SELECTEDCOLOR = QueryField(
      fieldName: "selectedColor",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (ColourProperties).toString()));
  static final QueryField UNSELECTEDCOLOR = QueryField(
      fieldName: "unSelectedColor",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (ColourProperties).toString()));
  static final QueryField INDICATORCOLOR = QueryField(
      fieldName: "indicatorColor",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (ColourProperties).toString()));
  static final QueryField DESCRIPTIONCOLOR = QueryField(
      fieldName: "descriptionColor",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (ColourProperties).toString()));
  static final QueryField BACKGROUNDCOLOR = QueryField(
      fieldName: "backgroundColor",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (ColourProperties).toString()));
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CategoryTheme";
    modelSchemaDefinition.pluralName = "CategoryThemes";

    modelSchemaDefinition.authRules = [
      AuthRule(authStrategy: AuthStrategy.PUBLIC, operations: [
        ModelOperation.CREATE,
        ModelOperation.UPDATE,
        ModelOperation.DELETE,
        ModelOperation.READ
      ])
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: CategoryTheme.SELECTEDCOLOR,
        isRequired: false,
        targetName: "categoryThemeSelectedColorId",
        ofModelName: (ColourProperties).toString()));

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: CategoryTheme.UNSELECTEDCOLOR,
        isRequired: false,
        targetName: "categoryThemeUnSelectedColorId",
        ofModelName: (ColourProperties).toString()));

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: CategoryTheme.INDICATORCOLOR,
        isRequired: false,
        targetName: "categoryThemeIndicatorColorId",
        ofModelName: (ColourProperties).toString()));

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: CategoryTheme.DESCRIPTIONCOLOR,
        isRequired: false,
        targetName: "categoryThemeDescriptionColorId",
        ofModelName: (ColourProperties).toString()));

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: CategoryTheme.BACKGROUNDCOLOR,
        isRequired: false,
        targetName: "categoryThemeBackgroundColorId",
        ofModelName: (ColourProperties).toString()));
  });
}

class CategoryThemeType extends ModelType<CategoryTheme> {
  const CategoryThemeType();

  @override
  CategoryTheme fromJson(Map<String, dynamic> jsonData) {
    return CategoryTheme.fromJson(jsonData);
  }
}
