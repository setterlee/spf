/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Config type in your schema. */
@immutable
class Config extends Model {
  static const classType = const _ConfigModelType();
  final String id;
  final int? _precision;
  final int? _currencyFactor;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  int? get precision {
    return _precision;
  }
  
  int? get currencyFactor {
    return _currencyFactor;
  }
  
  const Config._internal({required this.id, precision, currencyFactor}): _precision = precision, _currencyFactor = currencyFactor;
  
  factory Config({String? id, int? precision, int? currencyFactor}) {
    return Config._internal(
      id: id == null ? UUID.getUUID() : id,
      precision: precision,
      currencyFactor: currencyFactor);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Config &&
      id == other.id &&
      _precision == other._precision &&
      _currencyFactor == other._currencyFactor;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Config {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("precision=" + (_precision != null ? _precision!.toString() : "null") + ", ");
    buffer.write("currencyFactor=" + (_currencyFactor != null ? _currencyFactor!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Config copyWith({String? id, int? precision, int? currencyFactor}) {
    return Config(
      id: id ?? this.id,
      precision: precision ?? this.precision,
      currencyFactor: currencyFactor ?? this.currencyFactor);
  }
  
  Config.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _precision = (json['precision'] as num?)?.toInt(),
      _currencyFactor = (json['currencyFactor'] as num?)?.toInt();
  
  Map<String, dynamic> toJson() => {
    'id': id, 'precision': _precision, 'currencyFactor': _currencyFactor
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'precision': _precision, 'currencyFactor': _currencyFactor
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField PRECISION = QueryField(fieldName: "precision");
  static final QueryField CURRENCYFACTOR = QueryField(fieldName: "currencyFactor");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Config";
    modelSchemaDefinition.pluralName = "Configs";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.OWNER,
        ownerField: "owner",
        identityClaim: "cognito:username",
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Config.PRECISION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Config.CURRENCYFACTOR,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
  });
}

class _ConfigModelType extends ModelType<Config> {
  const _ConfigModelType();
  
  @override
  Config fromJson(Map<String, dynamic> jsonData) {
    return Config.fromJson(jsonData);
  }
}