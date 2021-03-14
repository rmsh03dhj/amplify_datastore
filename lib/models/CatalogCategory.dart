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

/** This is an auto generated class representing the CatalogCategory type in your schema. */
@immutable
class CatalogCategory extends Model {
  static const classType = const CatalogCategoryType();
  final String id;
  final String name;
  final String description;
  final CategoryTheme categoryTheme;
  final ButtonProperties button;
  final String image;
  final int priority;
  final String navigationalcatalogID;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const CatalogCategory._internal(
      {@required this.id,
      this.name,
      this.description,
      this.categoryTheme,
      this.button,
      this.image,
      this.priority,
      this.navigationalcatalogID});

  factory CatalogCategory(
      {String id,
      String name,
      String description,
      CategoryTheme categoryTheme,
      ButtonProperties button,
      String image,
      int priority,
      String navigationalcatalogID}) {
    return CatalogCategory._internal(
        id: id == null ? UUID.getUUID() : id,
        name: name,
        description: description,
        categoryTheme: categoryTheme,
        button: button,
        image: image,
        priority: priority,
        navigationalcatalogID: navigationalcatalogID);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CatalogCategory &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        categoryTheme == other.categoryTheme &&
        button == other.button &&
        image == other.image &&
        priority == other.priority &&
        navigationalcatalogID == other.navigationalcatalogID;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("CatalogCategory {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$name" + ", ");
    buffer.write("description=" + "$description" + ", ");
    buffer.write("categoryTheme=" +
        (categoryTheme != null ? categoryTheme.toString() : "null") +
        ", ");
    buffer.write(
        "button=" + (button != null ? button.toString() : "null") + ", ");
    buffer.write("image=" + "$image" + ", ");
    buffer.write(
        "priority=" + (priority != null ? priority.toString() : "null") + ", ");
    buffer.write("navigationalcatalogID=" + "$navigationalcatalogID");
    buffer.write("}");

    return buffer.toString();
  }

  CatalogCategory copyWith(
      {String id,
      String name,
      String description,
      CategoryTheme categoryTheme,
      ButtonProperties button,
      String image,
      int priority,
      String navigationalcatalogID}) {
    return CatalogCategory(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        categoryTheme: categoryTheme ?? this.categoryTheme,
        button: button ?? this.button,
        image: image ?? this.image,
        priority: priority ?? this.priority,
        navigationalcatalogID:
            navigationalcatalogID ?? this.navigationalcatalogID);
  }

  CatalogCategory.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        description = json['description'],
        categoryTheme = json['categoryTheme'] != null
            ? CategoryTheme.fromJson(
                new Map<String, dynamic>.from(json['categoryTheme']))
            : null,
        button = json['button'] != null
            ? ButtonProperties.fromJson(
                new Map<String, dynamic>.from(json['button']))
            : null,
        image = json['image'],
        priority = json['priority'],
        navigationalcatalogID = json['navigationalcatalogID'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'categoryTheme': categoryTheme?.toJson(),
        'button': button?.toJson(),
        'image': image,
        'priority': priority,
        'navigationalcatalogID': navigationalcatalogID
      };

  static final QueryField ID = QueryField(fieldName: "catalogCategory.id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField DESCRIPTION = QueryField(fieldName: "description");
  static final QueryField CATEGORYTHEME = QueryField(
      fieldName: "categoryTheme",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (CategoryTheme).toString()));
  static final QueryField BUTTON = QueryField(
      fieldName: "button",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (ButtonProperties).toString()));
  static final QueryField IMAGE = QueryField(fieldName: "image");
  static final QueryField PRIORITY = QueryField(fieldName: "priority");
  static final QueryField NAVIGATIONALCATALOGID =
      QueryField(fieldName: "navigationalcatalogID");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CatalogCategory";
    modelSchemaDefinition.pluralName = "CatalogCategories";

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
        key: CatalogCategory.NAME,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: CatalogCategory.DESCRIPTION,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: CatalogCategory.CATEGORYTHEME,
        isRequired: false,
        targetName: "catalogCategoryCategoryThemeId",
        ofModelName: (CategoryTheme).toString()));

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: CatalogCategory.BUTTON,
        isRequired: false,
        targetName: "catalogCategoryButtonId",
        ofModelName: (ButtonProperties).toString()));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: CatalogCategory.IMAGE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: CatalogCategory.PRIORITY,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: CatalogCategory.NAVIGATIONALCATALOGID,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class CatalogCategoryType extends ModelType<CatalogCategory> {
  const CatalogCategoryType();

  @override
  CatalogCategory fromJson(Map<String, dynamic> jsonData) {
    return CatalogCategory.fromJson(jsonData);
  }
}
