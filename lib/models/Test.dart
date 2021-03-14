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

/** This is an auto generated class representing the Test type in your schema. */
@immutable
class Test extends Model {
  static const classType = const TestType();
  final String id;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const Test._internal({@required this.id});

  factory Test({String id}) {
    return Test._internal(id: id == null ? UUID.getUUID() : id);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Test && id == other.id;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Test {");
    buffer.write("id=" + "$id");
    buffer.write("}");

    return buffer.toString();
  }

  Test copyWith({String id}) {
    return Test(id: id ?? this.id);
  }

  Test.fromJson(Map<String, dynamic> json) : id = json['id'];

  Map<String, dynamic> toJson() => {'id': id};

  static final QueryField ID = QueryField(fieldName: "test.id");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Test";
    modelSchemaDefinition.pluralName = "Tests";

    modelSchemaDefinition.authRules = [
      AuthRule(authStrategy: AuthStrategy.PUBLIC, operations: [
        ModelOperation.CREATE,
        ModelOperation.UPDATE,
        ModelOperation.DELETE,
        ModelOperation.READ
      ])
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());
  });
}

class TestType extends ModelType<Test> {
  const TestType();

  @override
  Test fromJson(Map<String, dynamic> jsonData) {
    return Test.fromJson(jsonData);
  }
}