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
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the NavigationalCatalog type in your schema. */
@immutable
class NavigationalCatalog extends Model {
  static const classType = const NavigationalCatalogType();
  final String id;
  final int version;
  final TemporalDateTime fetchedDate;
  final TemporalDateTime expiryDate;
  final int interval;
  final bool fetchRealTime;
  final List<CatalogCategory> catalogCategories;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const NavigationalCatalog._internal(
      {@required this.id,
      this.version,
      this.fetchedDate,
      this.expiryDate,
      this.interval,
      this.fetchRealTime,
      this.catalogCategories});

  factory NavigationalCatalog(
      {String id,
      int version,
      TemporalDateTime fetchedDate,
      TemporalDateTime expiryDate,
      int interval,
      bool fetchRealTime,
      List<CatalogCategory> catalogCategories}) {
    return NavigationalCatalog._internal(
        id: id == null ? UUID.getUUID() : id,
        version: version,
        fetchedDate: fetchedDate,
        expiryDate: expiryDate,
        interval: interval,
        fetchRealTime: fetchRealTime,
        catalogCategories: catalogCategories != null
            ? List.unmodifiable(catalogCategories)
            : catalogCategories);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NavigationalCatalog &&
        id == other.id &&
        version == other.version &&
        fetchedDate == other.fetchedDate &&
        expiryDate == other.expiryDate &&
        interval == other.interval &&
        fetchRealTime == other.fetchRealTime &&
        DeepCollectionEquality()
            .equals(catalogCategories, other.catalogCategories);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("NavigationalCatalog {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write(
        "version=" + (version != null ? version.toString() : "null") + ", ");
    buffer.write("fetchedDate=" +
        (fetchedDate != null ? fetchedDate.format() : "null") +
        ", ");
    buffer.write("expiryDate=" +
        (expiryDate != null ? expiryDate.format() : "null") +
        ", ");
    buffer.write(
        "interval=" + (interval != null ? interval.toString() : "null") + ", ");
    buffer.write("fetchRealTime=" +
        (fetchRealTime != null ? fetchRealTime.toString() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  NavigationalCatalog copyWith(
      {String id,
      int version,
      TemporalDateTime fetchedDate,
      TemporalDateTime expiryDate,
      int interval,
      bool fetchRealTime,
      List<CatalogCategory> catalogCategories}) {
    return NavigationalCatalog(
        id: id ?? this.id,
        version: version ?? this.version,
        fetchedDate: fetchedDate ?? this.fetchedDate,
        expiryDate: expiryDate ?? this.expiryDate,
        interval: interval ?? this.interval,
        fetchRealTime: fetchRealTime ?? this.fetchRealTime,
        catalogCategories: catalogCategories ?? this.catalogCategories);
  }

  NavigationalCatalog.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        version = json['version'],
        fetchedDate = json['fetchedDate'] != null
            ? TemporalDateTime.fromString(json['fetchedDate'])
            : null,
        expiryDate = json['expiryDate'] != null
            ? TemporalDateTime.fromString(json['expiryDate'])
            : null,
        interval = json['interval'],
        fetchRealTime = json['fetchRealTime'],
        catalogCategories = json['catalogCategories'] is List
            ? (json['catalogCategories'] as List)
                .map((e) =>
                    CatalogCategory.fromJson(new Map<String, dynamic>.from(e)))
                .toList()
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'version': version,
        'fetchedDate': fetchedDate?.format(),
        'expiryDate': expiryDate?.format(),
        'interval': interval,
        'fetchRealTime': fetchRealTime,
        'catalogCategories':
            catalogCategories?.map((e) => e?.toJson())?.toList()
      };

  static final QueryField ID = QueryField(fieldName: "navigationalCatalog.id");
  static final QueryField VERSION = QueryField(fieldName: "version");
  static final QueryField FETCHEDDATE = QueryField(fieldName: "fetchedDate");
  static final QueryField EXPIRYDATE = QueryField(fieldName: "expiryDate");
  static final QueryField INTERVAL = QueryField(fieldName: "interval");
  static final QueryField FETCHREALTIME =
      QueryField(fieldName: "fetchRealTime");
  static final QueryField CATALOGCATEGORIES = QueryField(
      fieldName: "catalogCategories",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (CatalogCategory).toString()));
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "NavigationalCatalog";
    modelSchemaDefinition.pluralName = "NavigationalCatalogs";

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
        key: NavigationalCatalog.VERSION,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: NavigationalCatalog.FETCHEDDATE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: NavigationalCatalog.EXPIRYDATE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: NavigationalCatalog.INTERVAL,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: NavigationalCatalog.FETCHREALTIME,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.bool)));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: NavigationalCatalog.CATALOGCATEGORIES,
        isRequired: false,
        ofModelName: (CatalogCategory).toString(),
        associatedKey: CatalogCategory.NAVIGATIONALCATALOGID));
  });
}

class NavigationalCatalogType extends ModelType<NavigationalCatalog> {
  const NavigationalCatalogType();

  @override
  NavigationalCatalog fromJson(Map<String, dynamic> jsonData) {
    return NavigationalCatalog.fromJson(jsonData);
  }
}
